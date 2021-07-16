import 'package:flutter/material.dart';
import 'package:ramadan/const/color.dart';

Widget defaultText({
  style,
  required String text,
}) =>
    Text(
      text,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: WhiteText
      ),
    );

