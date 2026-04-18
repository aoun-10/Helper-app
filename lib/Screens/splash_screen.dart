import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:helper_app/Screens/Onboarding_screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context,
        MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric( horizontal:80.w),
          child: Image.asset("assets/images/Logo.png"),
        ),
      ),
    );
  }
}
