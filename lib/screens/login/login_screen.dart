import 'package:delivery_demo/screens/login/components/custom_text_input.dart';
import 'package:delivery_demo/utils/helper.dart';
import 'package:flutter/material.dart';
import '../../const/colors.dart';

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
                Text(
                  'Preencha as informações',
                  style: Helper.getTheme(context).labelLarge,
                ),
                const Spacer(),
                const CustomTextInput(
                  hintText: 'E-mail',
                ),
                const Spacer(),
                const CustomTextInput(
                  hintText: 'Senha',
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Text('Esqueceu a senha?'),
                ),
                const Spacer(),
                const Text(
                  'ou entre com',
                ),
                const Spacer(),
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
                const Spacer(
                  flex: 4,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ainda não tem uma conta?',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Registrese aqui',
                      style: TextStyle(
                        color: AppColor.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
