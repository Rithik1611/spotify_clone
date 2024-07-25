import 'package:client/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  const CustomForm(
      {super.key,
      required this.hinttext,
      required this.controller,
      this.isObscure = false});

  final TextEditingController controller;
  final String hinttext;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscure,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return "$hinttext is required";
        }
        return null;
      },
      obscuringCharacter: "*",
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: hinttext,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: Pallete.borderColor,
            ),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: Pallete.gradient2,
            ),
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
