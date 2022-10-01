import 'package:flutter/material.dart';
import 'package:yoga_app/views/home/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //  implement initState
    super.initState();
    //CHECK INSTALLATION,INSERT,READ,UPDATE,OPERATION STATUS
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Text("HOME PAGE"),
        ),
      ),
    );
  }
}
