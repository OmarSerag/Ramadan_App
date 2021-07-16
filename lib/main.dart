import 'package:flutter/material.dart';
import 'package:ramadan/const/color.dart';
import 'package:ramadan/screens/splash/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          accentColor: kAccentColor,
          primaryColor: kPrimaryColor,
        ),
        home: SplashScreen());
  }
}
