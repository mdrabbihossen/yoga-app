import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yoga_app/views/work_out_details/screens/work_out_details_screen.dart';

class ReadyScreenTimerModel extends ChangeNotifier {
  int countdown = 5;

  ReadyScreenTimerModel(context) {
    MyReadyScreenTimer(context);
  }

  MyReadyScreenTimer(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      if (countdown == 0) {
        timer.cancel();
        timer.cancel();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WorkOutDetails(),
          ),
        );
      }
      notifyListeners();
    });
  }
}
