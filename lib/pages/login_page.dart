// import 'package:first_app/component/CustomTextField.dart';
import 'package:first_app/router/router.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool buttonAnimation = false;
  final _formKey = GlobalKey<FormState>();

// button action
  handelLogin(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        buttonAnimation = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MainRoute.homeRoute);
      setState(() {
        buttonAnimation = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      // child: Center(
      //   child: Text(
      //     'Login Page',
      //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //   ),
      // ),

      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 50),
              Image.asset(
                'assets/images/login.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 15),
              Text(
                'Welcome $name',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                child: Column(
                  children: [
                    TextFormField(
                      style: const TextStyle(fontWeight: FontWeight.w600),
                      decoration: const InputDecoration(
                          hintText: 'asadsanto10',
                          labelText: 'Enter User Name'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'User Name is required';
                        }
                        return null;
                      },
                      onChanged: (value) => {name = value, setState(() {})},
                    ),
                    // CustomTextField(
                    //     hintText: 'asadsanto10',
                    //     labelText: 'Enter User Name',
                    //     errorMessage: 'User Name is required'),
                    TextFormField(
                      style: const TextStyle(fontWeight: FontWeight.w600),
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: '*********',
                        labelText: 'Enter Password',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Material(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(buttonAnimation ? 50 : 5),
                child: InkWell(
                  onTap: () => handelLogin(context),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: 35,
                    width: buttonAnimation ? 35 : 100,
                    alignment: Alignment.center,
                    child: buttonAnimation
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                  ),
                ),
              )
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.pushNamed(context, MainRoute.homeRoute);
              //     },
              //     style: TextButton.styleFrom(
              //       foregroundColor: Colors.white,
              //       minimumSize: const Size(88, 36),
              //       padding: const EdgeInsets.symmetric(
              //           horizontal: 35.0, vertical: 20.0),
              //       shape: const RoundedRectangleBorder(
              //         borderRadius: BorderRadius.all(Radius.circular(2.0)),
              //       ),
              //     ),
              //     child: const Text(
              //       'Login',
              //       style: TextStyle(
              //         fontWeight: FontWeight.w600,
              //       ),
              //     ))
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Widget amarCard = Card(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           const ListTile(
//             leading: Icon(Icons.album),
//             title: Text('The Enchanted Nightingale'),
//             subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: <Widget>[
//               TextButton(
//                 child: const Text('BUY TICKETS'),
//                 onPressed: () {/* ... */},
//               ),
//               const SizedBox(width: 8),
//               TextButton(
//                 child: const Text('LISTEN'),
//                 onPressed: () {/* ... */},
//               ),
//               const SizedBox(width: 8),
//             ],
//           ),
//         ],
//       ),
//     );
//     return Container(
//       padding: const EdgeInsets.fromLTRB(10, 5, 15, 25),
//       color: Colors.lightBlue,
//       child: Column(children: [amarCard]),
//     );
//   }
// }
