import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    initialRoute: 'SplashScreen',
    routes: {
      'SplashScreen': (context) => SplashScreen(),
      '/': (context) => Main(),
      // '/hora': (context) => Hora(),
    }
  ),
);

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Main())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF7B139A),
        ),
        child: Center(
          child: Image.asset("./lib/assets/nu.png", scale: 2,),
        ),
      ),
    );
  }
}

// Route Main
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF7B139A),
        ),
        child: Center(
          child: Text(
            "Olá Mundo!",
            style: TextStyle(
              fontSize: 32,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}

// Route Hora
// class Hora extends StatelessWidget {
//   final horaatual = new DateTime.now();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: RaisedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Voltar'),
//         ),
//       ),
//     );
//   }
// }