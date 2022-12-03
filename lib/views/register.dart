// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bloodzone/components/authfield.dart';
import 'package:bloodzone/components/fullbutton.dart';
import 'package:bloodzone/constant.dart';
import 'package:bloodzone/layouts/auth.dart';
import 'package:bloodzone/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nama = TextEditingController();
  TextEditingController telepon = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  void handleSubmit() async {
    await Auth.register(
      username: username.text,
      password: password.text,
      nama: nama.text,
      telepon: telepon.text,
    );

    Get.back();

    showSnackbar('berhasil registrasi akun. Silahkan login!');
  }

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      content: Container(
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
                  SizedBox(height: 30),
                  AuthField(
                    controller: nama,
                    label: 'Nama',
                    placeholder: 'Nama Anda',
                  ),
                  AuthField(
                    controller: telepon,
                    label: 'Nomor Telepon',
                    placeholder: '08xxxxxxxxxx',
                  ),
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
                    text: 'REGISTER',
                    onTap: handleSubmit,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sudah punya akun? '),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    'login disini',
                    style: TextStyle(color: cPrimary),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
