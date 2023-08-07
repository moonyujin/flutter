import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project/home/home_screen.dart';
import 'package:project/login/login_screen.dart';
import 'package:project/main.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: AnimatedSplashScreen(
          splash: Lottie.asset('lottie/splash.json'),
          nextScreen: const LoginScreen(),
          duration: 1500,
          splashIconSize: 120,
      ),
    );
  }
}
