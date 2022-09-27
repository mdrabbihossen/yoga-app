import 'package:flutter/material.dart';
import 'package:yoga_app/constants/widgets/text_style.dart';

Widget customButton(
        {required VoidCallback onPressed,
        required String buttonText,
        Color? bgColor,
        Color? textColor,
        Size? size,BorderSide? side}) =>
    ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        minimumSize: size,
        side: side,
        elevation: 0,
      ),
      child: Text(
        buttonText,
        style: textStyle(
          fontSize: 16,
          textColor: textColor,
        ),
      ),
    );
