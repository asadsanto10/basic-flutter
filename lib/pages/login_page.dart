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
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              child: Column(
                children: [
                  TextFormField(
                    style: const TextStyle(fontWeight: FontWeight.w600),
                    decoration: const InputDecoration(
                        hintText: 'asadsanto10', labelText: 'Enter User Name'),
                    onChanged: (value) => {name = value, setState(() {})},
                  ),
                  TextFormField(
                    style: const TextStyle(fontWeight: FontWeight.w600),
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: '*********', labelText: 'Enter Password'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            InkWell(
              onTap: () async {
                setState(() {
                  buttonAnimation = true;
                });
                await Future.delayed(const Duration(seconds: 1));
                // ignore: use_build_context_synchronously
                Navigator.pushNamed(context, MainRoute.homeRoute);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: 35,
                width: buttonAnimation ? 35 : 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius:
                        BorderRadius.circular(buttonAnimation ? 50 : 5)),
                child: buttonAnimation
                    ? const Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
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
