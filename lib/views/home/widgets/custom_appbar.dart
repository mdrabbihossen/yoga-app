import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final AnimationController animationController;
  final Animation colorsTween;
  final Animation homeTween;
  final Animation yogaTween;
  final Animation iconTween;
  final Animation drawerTween;
  final Function()? onPressed;

  const CustomAppBar({
    Key? key,
    required this.animationController,
    required this.onPressed,
    required this.colorsTween,
    required this.drawerTween,
    required this.homeTween,
    required this.iconTween,
    required this.yogaTween,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) => AppBar(
          backgroundColor: colorsTween.value,
          elevation: 0,
          title: Row(
            children: [
              Text(
                "HOME ",
                style: TextStyle(
                    color: homeTween.value,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "YOGA",
                style: TextStyle(
                    color: yogaTween.value,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
          leading: IconButton(
            icon: Icon(
              Icons.dehaze,
              color: drawerTween.value,
            ),
            onPressed: onPressed,
          ),
          actions: [
            Icon(
              Icons.notifications,
              color: iconTween.value,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundColor: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
