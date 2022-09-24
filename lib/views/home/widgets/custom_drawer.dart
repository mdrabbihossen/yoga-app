import 'package:flutter/material.dart';
import 'package:yoga_app/constants/widgets/text_style.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1545389336-cf090694435e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"),
              ),
            ),
          ),
          customListTile(
            title: 'Reset Progress',
            leading: Icons.restart_alt_sharp,
          ),
          customListTile(
            title: 'Share With Friends',
            leading: Icons.share,
          ),
          customListTile(
            title: 'Rate Us',
            leading: Icons.star,
          ),
          customListTile(
            title: 'Feedback',
            leading: Icons.comment,
          ),
          customListTile(
            title: 'Privacy Policy',
            leading: Icons.security,
          ),
          Divider(
            thickness: 3,
            endIndent: 30,
            indent: 30,
          ),
          Text(
            'Version 1.0.0',
            textAlign: TextAlign.center,
            style: textStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }

  Widget customListTile({required String title, required IconData leading}) =>
      ListTile(
        title: Text(
          title,
          style: textStyle(fontSize: 18),
        ),
        leading: Icon(
          leading,
          size: 25,
        ),
      );
}
