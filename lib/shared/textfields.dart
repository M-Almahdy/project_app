// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final bool ispass;
  final String hinttext;
  final TextInputType texttype;

  MyTextField({
    super.key,
    required this.texttype,
    required this.ispass,
    required this.hinttext,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: texttype,
      obscureText: ispass,
      decoration: InputDecoration(
        hintText: hinttext,
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
    );
  }
}
