
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toast {

  static void info(String message) {
    Fluttertoast.showToast(
        msg: message,
        textColor: Colors.black,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.yellow
    );
  }

  static void error(String message) {
    Fluttertoast.showToast(
        msg: message,
        textColor: Colors.white,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red
    );
  }

}