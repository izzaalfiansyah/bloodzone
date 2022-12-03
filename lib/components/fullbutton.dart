// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors
import 'package:bloodzone/constant.dart';
import 'package:flutter/material.dart';

class FullButton extends StatelessWidget {
  FullButton({
    Key? key,
    this.color,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final Color? color;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color ?? cPrimary,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(5),
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 14),
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
