import 'package:flutter/material.dart';

Widget defaultDarkText({
  required String text,
})=>Text(
  text,
  maxLines: 20,
  style: TextStyle(
    color: Colors.black,
    fontSize: 15,
  ),
);