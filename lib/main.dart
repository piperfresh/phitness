import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phitness/src/features/onboarding/splash_screen/splash_screen.dart';

void main() {
  runApp(const Phitness());
}

class Phitness extends StatefulWidget {
  const Phitness({super.key});

  @override
  State<Phitness> createState() => _PhitnessState();
}

class _PhitnessState extends State<Phitness> {
  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
