import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    theme: ThemeData(fontFamily: "Graphik"),
    initialRoute: 'SplashScreen',
    routes: {
      'SplashScreen': (context) => SplashScreen(),
      '/': (context) => Main(),
      // '/hora': (context) => Hora(),
    }
  ),
);


// Splash Screen
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

// Main
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF7B139A),
        ),
        child: Column(
          children: <Widget>[
            Top(),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white30,
              size: 30
            ),
            Card(),
          ],
        ),
      ),
    );
  }
}

// TOP
class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 90, top: 65),
            child: Image.asset("./lib/assets/nu.png", scale: 3.8),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 62),
            child: Text(
              "Marcos Vaz",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// CARD
class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 60),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: new BorderRadius.all(Radius.circular(2)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                offset: Offset(1, 2),
                blurRadius: 1
              ),
            ],
          ),
          width: 325,
          height: 370,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.account_balance,
                        color: Colors.grey[400],
                        size: 30
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: Icon(
                        Icons.visibility_off,
                        color: Colors.grey[400],
                        size: 30
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, top: 60),
                child: Text("Saldo disponível", style: TextStyle(color: Colors.black54)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text("R\$ 1.000.000,00", style: TextStyle(color: Colors.black, fontSize: 30)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 90),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 50, top: 30, bottom: 27),
                    child: Text("Dinheiro guardado no valor \nde R\$ 150.000,00 sexta"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}