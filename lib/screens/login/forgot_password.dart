import 'package:delivery_demo/screens/login/components/custom_text_input.dart';
import 'package:delivery_demo/utils/helper.dart';
import 'package:flutter/material.dart';


class ForgetPwScreen extends StatelessWidget {
const ForgetPwScreen({super.key});
  static const routeName = "/restpwScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  "Reset Password",
                  style: Helper.getTheme(context).titleMedium,
                ),
                const Spacer(),
                const Text(
                  "Insira seu e-mail",
                  textAlign: TextAlign.center,
                ),
                const Spacer(flex: 2),
                const CustomTextInput(hintText: "Email"),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context)
                      //     .pushReplacementNamed(SendOTPScreen.routeName);
                    },
                    child: const Text("Send"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
