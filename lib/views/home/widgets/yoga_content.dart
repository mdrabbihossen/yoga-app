import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yoga_app/constants/widgets/text_style.dart';

class YogaContent extends StatelessWidget {
  final String image;
  final String yogaTitle;
  final String yogaSubtitle;

  const YogaContent({
    Key? key,
    required this.image,
    required this.yogaTitle,
    required this.yogaSubtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(image),
            ),
          ),
        ),
        Container(
          height: 150,
          color: Colors.black26,
        ),
        Positioned(
          top: 10,
          left: 10,
          right: 20,
          child: Text(
            yogaTitle,
            style: textStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              textColor: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 38,
          right: 30,
          left: 12,
          child: Text(
            yogaSubtitle,
            style: textStyle(
              fontSize: 10,
              textColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
