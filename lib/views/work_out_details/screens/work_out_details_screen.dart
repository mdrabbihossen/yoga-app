import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga_app/constants/widgets/custom_button.dart';
import 'package:yoga_app/constants/widgets/text_style.dart';
import 'package:yoga_app/views/work_out_details/model/work_out_timer_model.dart';

class WorkOutDetails extends StatelessWidget {
  const WorkOutDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ChangeNotifierProvider<WorkOutTimerModel>(
      create: (context) => WorkOutTimerModel(context),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
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
                  Consumer<WorkOutTimerModel>(
                    builder: (context, myModel, child) => ElevatedButton(
                      onPressed: () {
                        myModel.show();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff6558F5),
                      ),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Text(
                          'PAUSE',
                          style: textStyle(
                            fontSize: 20,
                          ),
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
                        customButton(
                          onPressed: () {},
                          buttonText: 'Previous',
                          bgColor: Colors.white,
                          textColor: Color(0xff6558F5),
                        ),
                        customButton(
                          onPressed: () {},
                          buttonText: 'Next',
                          bgColor: Colors.white,
                          textColor: Color(0xff6558F5),
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 2),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 20),
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
            Consumer<WorkOutTimerModel>(
              builder: (context, myModel, child) => Visibility(
                visible: myModel.visible,
                child: Container(
                  color: Colors.white,
                  height: size.height,
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pause',
                        style: textStyle(
                          fontSize: 40,
                          textColor: Colors.black12.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Yoga is the stilling of the changing states of the mind\n -Patanjali',
                        textAlign: TextAlign.center,
                        style: textStyle(
                          fontSize: 13,
                          textColor: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(height: 30),
                      customButton(
                        onPressed: () {},
                        buttonText: 'Restart',
                        textColor: Color(0xff6558F5),
                        bgColor: Colors.white,
                        size: Size(size.width * 0.8, size.height * 0.06),
                        side: BorderSide(
                          color: Color(0xff6558F5),
                        ),
                      ),
                      SizedBox(height: 14),
                      customButton(
                        onPressed: () {},
                        buttonText: 'Quit',
                        textColor: Color(0xff6558F5),
                        bgColor: Colors.white,
                        size: Size(size.width * 0.8, size.height * 0.06),
                        side: BorderSide(
                          color: Color(0xff6558F5),
                        ),
                      ),
                      SizedBox(height: 15),
                      customButton(
                        onPressed: () {
                          myModel.hide();
                        },
                        buttonText: 'RESUME',
                        bgColor: Color(0xff6558F5),
                        size: Size(size.width * 0.8, size.height * 0.06),
                      ),
                    ],
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
