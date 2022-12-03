// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:bloodzone/components/bottomnav.dart';
import 'package:bloodzone/constant.dart';
import 'package:flutter/material.dart';

class SectionLayout extends StatelessWidget {
  const SectionLayout({
    Key? key,
    required this.content,
  }) : super(key: key);

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(color: cPrimary),
        preferredSize: Size(0, 0),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            content,
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BottomNav(),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNav(),
    );
  }
}
