import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga_app/constants/widgets/custom_button.dart';
import 'package:yoga_app/constants/widgets/text_style.dart';
import 'package:yoga_app/views/break/model/break_time_model.dart';

class BreakTime extends StatelessWidget {
  const BreakTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ChangeNotifierProvider<BreakTimeModel>(
      create: (context) => BreakTimeModel(context),
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                'Break Time',
                style: textStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Consumer<BreakTimeModel>(
                builder: (context, myModel, child) => Text(
                  myModel.countdown.toString(),
                  style: textStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 55,
                      textColor: Colors.black),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.white,
                    side: BorderSide(color: Color(0xff9289F8), width: 2)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                  child: Text(
                    'SKIP',
                    style: textStyle(
                      fontSize: 19,
                      textColor: Color(0xff9289F8),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customButton(
                      onPressed: () {},
                      buttonText: 'Previous',
                      bgColor: Color(
                        0xff6558F5,
                      ),
                      size: Size(double.infinity, size.height * 0.07),
                    ),
                    SizedBox(height: 15),
                    customButton(
                      onPressed: () {},
                      buttonText: 'Next',
                      bgColor: Colors.white,
                      textColor: Color(0xff6558F5),
                      side: BorderSide(
                        color: Color(
                          0xff6558F5,
                        ),
                      ),
                      size: Size(double.infinity, size.height*0.07)
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Divider(thickness: 2),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Text(
                    'Next: Anulom Vilom',
                    style: textStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
