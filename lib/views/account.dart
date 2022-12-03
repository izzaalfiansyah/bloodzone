// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:bloodzone/components/fullbutton.dart';
import 'package:bloodzone/constant.dart';
import 'package:bloodzone/views/login.dart';
import 'package:bloodzone/layouts/section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  handleLogout() {
    Get.offAll(
      () => LoginScreen(),
      transition: Transition.topLevel,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SectionLayout(
      content: ListView(
        children: [
          Container(
            height: Get.height * .35,
            decoration: BoxDecoration(
              color: cPrimary,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  right: 20,
                  child: GestureDetector(
                    onTap: () {
                      Get.bottomSheet(
                        BottomSheet(
                          onClosing: () {
                            Get.back();
                          },
                          builder: (context) {
                            return Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'LOGOUT',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                      'Anda yakin akan logout? Sesi anda akan terhapus secanara permanen'),
                                  SizedBox(height: 40),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: FullButton(
                                          text: 'BATAL',
                                          color: Colors.grey,
                                          onTap: Get.back,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: FullButton(
                                          text: 'LOGOUT',
                                          onTap: handleLogout,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                    child: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: shadowBase,
                          border: Border.all(
                            color: Colors.grey.shade100,
                            width: 5,
                          ),
                          image: DecorationImage(
                            image: NetworkImage('https://izzaalfiansyah.vercel.app/assets/me.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 14),
                      Text(
                        'Muhammad Izza Alfiansyah',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: shadowBase,
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nama',
                      hintText: 'Masukkan Nama',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      isDense: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nomor Telepon',
                      hintText: '08xxxxxxxxxx',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      isDense: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  InputDecorator(
                    decoration: InputDecoration(
                      labelText: 'Gol. Darah',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      isDense: true,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: Text('Pilih Gol. Darah'),
                        isDense: true,
                        items: [
                          DropdownMenuItem(
                            child: Text('Gol A'),
                            value: 'A',
                          ),
                          DropdownMenuItem(
                            child: Text('Gol B'),
                            value: 'B',
                          ),
                          DropdownMenuItem(
                            child: Text('Gol AB'),
                            value: 'AB',
                          ),
                          DropdownMenuItem(
                            child: Text('Gol 0'),
                            value: '0',
                          ),
                        ],
                        onChanged: (val) {
                          print(val);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      labelText: 'Alamat',
                      hintText: 'Masukkan Alamat',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      isDense: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'Masukkan Username',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      isDense: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: '********',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      isDense: true,
                      helperText: 'Kosongkan jika tidak ingin mengubah',
                    ),
                  ),
                  SizedBox(height: 40),
                  FullButton(
                    text: 'SIMPAN',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
