import 'package:bloodzone/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bloodzone/views/splash.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloodzone',
      theme: ThemeData(
        primarySwatch: cPrimary,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: SplashScreen(),
    );
  }
}
