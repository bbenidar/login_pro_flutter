import 'package:clickcounter/pages/Welcome.dart';
import 'package:clickcounter/pages/page1.dart';
import 'package:clickcounter/pages/singup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Stless());
}

class Stless extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const Welcome(),
        "/login": (context) => const Login(),
        "/signup": (context) => const Singup(),
      },
    );
  }
}
