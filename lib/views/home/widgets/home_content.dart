import 'package:flutter/material.dart';
import 'package:yoga_app/constants/widgets/text_style.dart';

class HomeContent extends StatelessWidget {
  final String upperText;
  final String downText;

  const HomeContent({
    Key? key,
    required this.downText,
    required this.upperText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          upperText,
          style: textStyle(
            fontSize: 23,
            textColor: Colors.white,
          ),
        ),
        Text(
          downText,
          style: textStyle(
            fontSize: 13,
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
