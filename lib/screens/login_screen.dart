import 'package:delivery_demo/utils/helper.dart';
import 'package:flutter/material.dart';
import '../const/colors.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              children: [
                Text('Login', style: Helper.getTheme(context).titleLarge),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Preencha as informações',
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextInput(
                  hintText: 'E-mail',
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextInput(
                  hintText: 'Senha',
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text('Esqueceu a senha?'),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'ou entre com',
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColor.facebook),
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook),
                        SizedBox(
                          width: 30,
                        ),
                        Text('Login com o Facebook'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColor.google),
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.g_mobiledata_sharp),
                        SizedBox(
                          width: 30,
                        ),
                        Text('Login com o Google'),
                      ],
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

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    required this.hintText,
    super.key,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: ShapeDecoration(
        color: Colors.grey[200],
        shape: const StadiumBorder(),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[400],
          ),
          contentPadding: const EdgeInsets.only(left: 20),
        ),
      ),
    );
  }
}
