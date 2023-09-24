import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import "dart:math" show pi;
import 'dart:async';
import 'package:mentorup_app/Screens/Home%20Page/components/home_screen.dart';
import 'package:mentorup_app/Screens/Login/login_screen.dart';
import 'package:mentorup_app/Screens/Welcome/welcome_screen.dart';

import 'Screens/OnBoarding/OnBoarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = AnimationController(
    //   vsync: this,
    //   duration: Duration(seconds: 4),
    // );
    // _controller.forward();
    // Timer(
    //     Duration(seconds: 6),
    //     () => Navigator.of(context).pushReplacement(MaterialPageRoute(
    //         builder: (BuildContext context) => WelcomeScreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/images/azume_plain_bg.png', // Path to your background image
            fit: BoxFit.cover,
          ),
          // AnimatedSplashScreen
          AnimatedSplashScreen(
            duration: 2000, // Duration of the splash animation
            splash: 'assets/images/new_logo.png', // Path to your splash logo
            nextScreen: OnboardingScreen(), // Your app's main screen
            splashTransition: SplashTransition.scaleTransition,
            animationDuration: Duration(milliseconds: 1500),
            backgroundColor: Colors.transparent, // Transparent background
            splashIconSize: 180, // Size of the splash logo
            centered: true,
          ),
        ],
      ),
    );
  }
}
