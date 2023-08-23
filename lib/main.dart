import 'package:delivery_demo/screens/landing_screen.dart';
import 'package:delivery_demo/screens/login_screen.dart';
import 'package:flutter/material.dart';

import './const/colors.dart';
import './screens/splash_screen.dart';

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
        textTheme: const TextTheme(),
      ),
      home: const SplashScreen(),
      routes: {
        LandingScreen.routeName: (context) => const LandingScreen(),
        LoginScreen.routName: (context) => const LoginScreen(),
      },
    );
  }
}
