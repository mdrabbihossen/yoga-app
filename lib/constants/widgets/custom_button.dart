import 'package:flutter/material.dart';
import 'package:yoga_app/constants/widgets/text_style.dart';

Widget customButton(
        {required VoidCallback onPressed, required String buttonText}) =>
    TextButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle(
          fontSize: 16,
        ),
      ),
    );
