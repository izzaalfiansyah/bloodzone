// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bloodzone/components/authfield.dart';
import 'package:bloodzone/components/fullbutton.dart';
import 'package:bloodzone/constant.dart';
import 'package:bloodzone/services/auth.dart';
import 'package:bloodzone/views/home.dart';
import 'package:bloodzone/views/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  void handleLogin() async {
    await Auth.login(
      username: username.text,
      password: password.text,
    );

    Get.to(
      () => HomeScreen(),
      transition: Transition.topLevel,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: Get.width,
            height: Get.height - 24,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Center(
                                child: Image.asset(
                                  'img/auth-img.png',
                                  width: 270,
                                ),
                              ),
                              SizedBox(height: 20),
                              AuthField(
                                controller: username,
                                label: 'Username',
                                placeholder: 'Masukkan Username',
                              ),
                              AuthField(
                                controller: password,
                                label: 'Password',
                                placeholder: '********',
                              ),
                              SizedBox(height: 20),
                              FullButton(
                                text: 'LOGIN',
                                onTap: handleLogin,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Belum punya akun? '),
                            GestureDetector(
                              onTap: () {
                                Get.to(
                                  () => RegisterScreen(),
                                  transition: Transition.fade,
                                );
                              },
                              child: Text(
                                'register disini',
                                style: TextStyle(color: cPrimary),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
