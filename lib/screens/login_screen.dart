import 'package:delivery_demo/utils/helper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routName = "/loginScreen";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Text('Login', style: Helper.getTheme(context).titleLarge),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Preencha as informações',
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Colors.grey[200],
                    shape: const StadiumBorder(),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'E-mail',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                      ),
                      contentPadding: const EdgeInsets.only(left: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
