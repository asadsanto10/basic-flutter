import 'package:first_app/router/router.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            Image.asset(
              'assets/images/login.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 15),
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MainRoute.homeRoute);
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  minimumSize: const Size(88, 36),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 20.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ))
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

