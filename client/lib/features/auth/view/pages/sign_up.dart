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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "SignUp!",
              style: TextStyle(
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
            CustomForm(hinttext: "Password")
          ],
        ),
      ),
    );
  }
}
