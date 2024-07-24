import 'package:client/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({super.key, required this.hinttext});

  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: hinttext,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: Pallete.borderColor,
            ),
            borderRadius: BorderRadius.circular(5)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: Pallete.gradient2,
            ),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
