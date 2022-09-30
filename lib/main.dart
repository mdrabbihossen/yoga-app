import 'package:flutter/material.dart';
import 'package:yoga_app/views/finish/screens/finish_screen.dart';
import 'package:yoga_app/views/home/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FinishScreen(),
    );
  }
}
