import 'package:delivery_demo/const/colors.dart';
import 'package:delivery_demo/screens/login/login_screen.dart';
import 'package:delivery_demo/utils/helper.dart';
import 'package:flutter/material.dart';

import 'components/custom_text_input.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const routeName = '/signUpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: Helper.getScreenWidth(context),
      height: Helper.getScreenHeight(context),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            children: [
              Text(
                "Sign Up",
                style: Helper.getTheme(context).titleMedium,
              ),
              const Spacer(),
              const Text(
                "Add your details to sign up",
              ),
              const Spacer(),
              const CustomTextInput(hintText: "Nome"),
              const Spacer(),
              const CustomTextInput(hintText: "Email"),
              const Spacer(),
              const CustomTextInput(hintText: "Celular"),
              const Spacer(),
              const CustomTextInput(hintText: "Endereço"),
              const Spacer(),
              const CustomTextInput(hintText: "Senha"),
              const Spacer(),
              const CustomTextInput(hintText: "Confirme a senha"),
              const Spacer(),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Resgistrar"),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(LoginScreen.routeName);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Já tem uma conta?"),
                    SizedBox(width: 10,),
                    Text(
                      "Login",
                      style: TextStyle(
                        color: AppColor.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
