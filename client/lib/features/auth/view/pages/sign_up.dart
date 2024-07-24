import 'package:client/core/theme/app_pallete.dart';
import 'package:client/features/auth/view/widgets/custom_form.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SIGNUP",
              style: TextStyle(
                color: Pallete.gradient2,
                fontWeight: FontWeight.bold,
                fontSize: 38,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CustomForm(
              hinttext: "Name",
            ),
            SizedBox(
              height: 15,
            ),
            CustomForm(hinttext: "Email"),
            SizedBox(
              height: 15,
            ),
            CustomForm(hinttext: "Password"),
            SizedBox(
              height: 30,
            ),
            Container(
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(395, 55),
                    backgroundColor: Pallete.transparentColor,
                    shadowColor: Pallete.transparentColor),
                child: Text(
                  "SIGNUP",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
                text: TextSpan(
                    text: "Already have an account? ",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                  TextSpan(
                      text: "SignUp",
                      style: TextStyle(
                          color: Pallete.gradient2,
                          fontWeight: FontWeight.bold))
                ]))
          ],
        ),
      ),
    );
  }
}
