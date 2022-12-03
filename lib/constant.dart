// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

var cPrimary = Colors.pink;

void showSnackbar(String message) {
  Get.showSnackbar(
    GetSnackBar(
      message: message,
      duration: Duration(seconds: 2),
    ),
  );
}
