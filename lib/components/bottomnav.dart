// ignore_for_file: prefer_const_constructors

import 'package:bloodzone/constant.dart';
import 'package:bloodzone/views/account.dart';
import 'package:bloodzone/views/history.dart';
import 'package:bloodzone/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Map> routes = [
    {
      'path': () => HistoryScreen(),
      'label': 'History',
      'icon': Icons.history_outlined,
    },
    {
      'path': () => HomeScreen(),
      'label': 'Home',
      'icon': Icons.home_outlined,
    },
    {
      'path': () => AccountScreen(),
      'label': 'Account',
      'icon': Icons.account_circle_outlined,
    },
  ];

  String isActive = Get.currentRoute;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          boxShadow: shadowBase,
        ),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(routes.length, (index) {
            var item = routes[index];
            if (isActive == "/${item['label']}Screen") {
              return GestureDetector(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      item['icon'],
                      color: cPrimary,
                    ),
                    Text(
                      item['label'],
                      style: TextStyle(color: cPrimary),
                    )
                  ],
                ),
              );
            } else {
              return GestureDetector(
                onTap: () {
                  if (item['label'] == 'Home') {
                    Get.offAll(() => HomeScreen(), transition: Transition.fadeIn);
                  } else {
                    Get.to(item['path'], transition: Transition.fadeIn);
                  }
                },
                child: Icon(
                  item['icon'],
                ),
              );
            }
          }),
        ),
      ),
    );
  }
}
