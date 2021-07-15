import 'package:flutter/material.dart';

class CustomBoldText extends StatelessWidget {
  final String text;

  const CustomBoldText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 22),
    );
  }
}
