import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga_app/constants/widgets/custom_button.dart';
import 'package:yoga_app/constants/widgets/text_style.dart';
import 'package:yoga_app/views/work_out_details/model/work_out_timer_model.dart';

class WorkOutDetails extends StatelessWidget {
  const WorkOutDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WorkOutTimerModel>(
      create: (context) => WorkOutTimerModel(context),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=920&q=80'),
                ),
              ),
            ),
            Spacer(),
            Text(
              'Anu-lom Vi-lom',
              style: textStyle(
                fontWeight: FontWeight.w600,
                fontSize: 35,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '00',
                  style: textStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  ' : ',
                  style: textStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Consumer<WorkOutTimerModel>(
                  builder: (context, myModel, child) => Text(
                    myModel.countdown.toString(),
                    style: textStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xff6558F5),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Text(
                  'PAUSE',
                  style: textStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customButton(onPressed: (){}, buttonText: 'Previous'),
                  customButton(onPressed: (){}, buttonText: 'Next'),
                ],
              ),
            ),
            Divider(thickness: 2),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                child: Text(
                  'Next: Anu-lom Vi-lom',
                  style: textStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    textColor: Color(0xff364451),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
