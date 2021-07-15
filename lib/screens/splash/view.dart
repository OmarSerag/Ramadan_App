import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ramadan/screens/on_boarding/view.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoarding(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Image.asset(
            "images/Group-1.png",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
        ),
      ),
    );
  }
}
