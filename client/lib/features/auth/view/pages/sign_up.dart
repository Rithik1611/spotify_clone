import 'package:client/core/theme/app_pallete.dart';
import 'package:client/features/auth/view/widgets/custom_form.dart';
import 'package:client/features/auth/view/widgets/signup_login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
    formkey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Form(
          key: formkey,
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
                controller: nameController,
                hinttext: "Name",
              ),
              SizedBox(
                height: 15,
              ),
              CustomForm(controller: emailController, hinttext: "Email"),
              SizedBox(
                height: 15,
              ),
              CustomForm(
                controller: passwordController,
                hinttext: "Password",
                isObscure: true,
              ),
              SizedBox(
                height: 30,
              ),
              SignupLogin(
                buttonname: "SIGNUP",
                ontap: () {},
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
      ),
    );
  }
}
