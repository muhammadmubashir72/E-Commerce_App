import 'dart:async';

import 'package:flutter/material.dart';
import 'package:e_commerce_app/SignLoginScreen/signup_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  void switchTosigninPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const signup()));
  }

  @override
  void initState() {
    // Timer(Duration(seconds: 10),() => switchToLoginPage());
    Future.delayed(const Duration(seconds: 3), switchTosigninPage);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.cover,
              ),
            )
          ]),
    );
  }
}
