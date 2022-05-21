import 'dart:async';

import 'package:flutter/material.dart';
import 'package:guestions/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => MyApp()), (route) => true));
    return Scaffold(
      body: Image(
        image: AssetImage('img14.jpg'),
        width: 50,
        height: 50,
      ),
    );
  }
}
