import 'package:flutter/material.dart';
import 'package:phitness/src/features/onboarding/splash_screen/splash_screen_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SplashScreenWidget(),
    );
  }
}
