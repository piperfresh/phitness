import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phitness/src/features/onboarding/pre_onboarding_view.dart';
import 'package:phitness/src/utils/styles/app_color.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {

  @override
  void initState() {
    navigate(context);
    super.initState();
  }

  void navigate(BuildContext context) async{
    Future.delayed(const Duration(seconds: 4), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return const PreOnBoardingView();
    }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color:AppColor.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Image.asset('assets/images/phit.png'),
        ],
      ),
    );
  }
}
