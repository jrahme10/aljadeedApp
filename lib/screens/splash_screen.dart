import 'package:flutter/material.dart';

import '../routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        Routes.news,
        (Route<dynamic> route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5F9),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "assets/images/splash.gif",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
