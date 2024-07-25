import 'package:client/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class SignupLogin extends StatelessWidget {
  const SignupLogin({super.key, required this.buttonname, required this.ontap});
  final String buttonname;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Pallete.gradient1,
                Pallete.gradient2,
                Pallete.gradient3
              ])),
      child: ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
            fixedSize: Size(395, 55),
            backgroundColor: Pallete.transparentColor,
            shadowColor: Pallete.transparentColor),
        child: Text(
          buttonname,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
