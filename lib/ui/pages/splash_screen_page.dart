import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spotify/res/colours.dart';
import 'package:spotify/res/media_res.dart';
import 'package:spotify/ui/pages/onboarding_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  startSplashScreen() {
    var duration = const Duration(seconds: 2);

    return Timer(
      duration,
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingPage(),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.background,
      body: SafeArea(
        child: Center(
          child: Image.asset(
            MediaRes.iconLogo,
            width: 196,
          ),
        ),
      ),
    );
  }
}
