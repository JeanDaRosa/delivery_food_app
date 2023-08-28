import 'package:delivery_demo/screens/login/components/custom_cipper_app_bar.dart';
import 'package:delivery_demo/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shadow_clip/shadow_clip.dart';

import '../../const/colors.dart';
import '../../utils/helper.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  static const routeName = "/landingScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: Helper.getScreenWidth(context),
      height: Helper.getScreenHeight(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: ClipShadow(
              clipper: CustomClipperAppBar(),
              boxShadow: const [
                BoxShadow(
                  color: AppColor.placeholder,
                  offset: Offset(0, 15),
                  blurRadius: 10,
                ),
              ],
              child: Container(
                width: double.infinity,
                height: Helper.getScreenHeight(context) * 0.5,
                decoration: ShapeDecoration(
                  color: AppColor.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Image.asset(
                  Helper.getAssetName("login_bg.png", "virtual"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              Helper.getAssetName("MealMonkeyLogo.png", "virtual"),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: Helper.getScreenHeight(context) * 0.3,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  const Flexible(
                    child: Text(
                      "Descubra as melhores comidas de vários restaurantes com entrega rápida na sua porta",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                      },
                      child: const Text("Login"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        foregroundColor: MaterialStateProperty.all(AppColor.orange),
                        shape: MaterialStateProperty.all(
                          const StadiumBorder(
                            side: BorderSide(color: AppColor.orange, width: 1.5),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("Crie uma conta"),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
