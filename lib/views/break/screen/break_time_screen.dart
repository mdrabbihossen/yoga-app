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
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1558017487-06bf9f82613a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=470&q=80'),
            ),
          ),
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
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                  child: Text(
                    'SKIP',
                    style: textStyle(fontSize: 19),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
