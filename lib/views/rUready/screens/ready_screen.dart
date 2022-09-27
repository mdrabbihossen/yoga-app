import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga_app/constants/widgets/text_style.dart';
import 'package:yoga_app/views/rUready/models/timer_model.dart';

class ReadyScreen extends StatelessWidget {
  const ReadyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ChangeNotifierProvider<TimerModel>(
      create: (context) => TimerModel(context),
      child: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height / 2 - 100),
                Text(
                  'ARE YOU\n READY?',
                  style: textStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    textColor: Color(0xff364451),
                  ),
                ),
                SizedBox(height: 20),
                Consumer<TimerModel>(
                  builder: (context, myModel, child) => Container(
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xffB4AEFA),
                        width: 5,
                      )
                    ),
                    child: Text(
                      myModel.countdown.toString(),
                      style: textStyle(
                        fontSize: 48,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Divider(thickness: 2),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                    child: Text(
                      'Next: Anu-lom Vi-lom',
                      style: textStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        textColor: Color(0xff718291),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
