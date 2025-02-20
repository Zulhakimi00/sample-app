// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  String title;
  String? hint;
  TextEditingController? controller;
  bool obscureText;
  CustomInput(
      {super.key,
      this.title = '',
      this.hint = '',
      this.controller,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
          ),
          child: TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint ?? '',
            ),
            controller: controller,
          ),
        ),
      ],
    );
  }
}
