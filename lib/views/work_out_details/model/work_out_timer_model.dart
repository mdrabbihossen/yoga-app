import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yoga_app/views/break/screen/break_time_screen.dart';

class WorkOutTimerModel extends ChangeNotifier {
  int countdown = 30;

  WorkOutTimerModel(context) {
    MyWorkOutTimer(context);
  }

  MyWorkOutTimer(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      notifyListeners();
      if (countdown == 0) {
        timer.cancel();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BreakTime(),
          ),
        );
      }
    });
  }
}
