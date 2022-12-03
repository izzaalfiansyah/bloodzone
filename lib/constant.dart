// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

var cPrimary = Colors.pink;
var shadowBase = [
  BoxShadow(
    color: Colors.black.withOpacity(.1),
    blurRadius: 4,
    offset: Offset(0, 2),
  )
];

void showSnackbar(String message) {
  Get.showSnackbar(
    GetSnackBar(
      message: message,
      duration: Duration(seconds: 2),
    ),
  );
}
