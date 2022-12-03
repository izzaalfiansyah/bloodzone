// ignore_for_file: prefer_const_constructors

import 'package:bloodzone/constant.dart';

class Auth {
  static login({
    required String username,
    required String password,
  }) {
    try {
      //
    } catch (e) {
      showSnackbar('gagal login');
    }
  }

  static register({
    required String username,
    required String password,
    required String nama,
    required String telepon,
  }) {
    try {
      //
    } catch (e) {
      showSnackbar('gagal registrasi akun');
    }
  }
}
