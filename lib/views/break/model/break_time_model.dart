import 'dart:async';

import 'package:flutter/material.dart';

class BreakTimeModel extends ChangeNotifier{
  int countdown=20;
  BreakTimeModel(context){
    MyBreakTimer(context);
  }
  MyBreakTimer(context)async{
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      notifyListeners();
      if(countdown==0){
        timer.cancel();
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>BreakTime(
        //
        // )));
      }
    });
  }
}