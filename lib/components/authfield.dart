// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    Key? key,
    required this.controller,
    required this.label,
    required this.placeholder,
  }) : super(key: key);

  final TextEditingController controller;
  final String label;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: 4),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200,
          ),
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: placeholder,
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: 14),
      ],
    );
  }
}
