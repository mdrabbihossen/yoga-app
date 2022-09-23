import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Yoga App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [Text("1"), Text("Streak")],
                  ),
                  Column(
                    children: [Text("1"), Text("Streak")],
                  ),
                  Column(
                    children: [Text("1"), Text("Streak")],
                  )
                ],
              ),
            ),
            Divider(
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),
            // yoga for all
            Container(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Yoga For All'),
                  SizedBox(height: 15),
                  Container(
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
            // yoga for all end
            // yoga for students
            Container(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Yoga for Students'),
                  SizedBox(height: 15),
                  Container(
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
