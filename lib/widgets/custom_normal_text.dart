import 'dart:ui';

import 'package:flutter/material.dart';

class CustomNormalText extends StatelessWidget {
  final String text;

  const CustomNormalText({required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, ),
    );
  }
}