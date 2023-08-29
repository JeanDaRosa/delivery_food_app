import 'package:delivery_demo/screens/home/home_screen.dart';
import 'package:delivery_demo/screens/intro/intro_screeen.dart';
import 'package:delivery_demo/screens/login/landing_screen.dart';
import 'package:delivery_demo/screens/login/login_screen.dart';
import 'package:delivery_demo/screens/login/sign_up_screen.dart';
import 'package:flutter/material.dart';

import './const/colors.dart';
import 'screens/login/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Metropolis",
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
            shape: MaterialStateProperty.all(
              const StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
          ),
        ),
        textTheme: const TextTheme(
          labelLarge: TextStyle(
            color: AppColor.secondary,
          ),
          bodySmall: TextStyle(
            color: AppColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: TextStyle(
            color: AppColor.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          titleMedium: TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.normal,
            fontSize: 25,
          ),
          titleLarge: TextStyle(
            color: AppColor.primary,
            fontSize: 25,
          ),
        ),
      ),
      home: const SplashScreen(),
      routes: {
        LandingScreen.routeName: (context) => const LandingScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        IntroScreen.routeName: (context) => const IntroScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
