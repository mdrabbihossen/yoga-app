import 'dart:async';

import 'package:flutter/material.dart';

class TimerModel extends ChangeNotifier{
  int countdown=5;
  TimerModel(context){
    MyTimer(context);
  }
  MyTimer(context) async{
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      if(countdown==0){
        timer.cancel();
        timer.cancel();
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkOutDet()));
      }
      notifyListeners();
    });
  }
}