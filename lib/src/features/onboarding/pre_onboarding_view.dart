import 'package:flutter/material.dart';
import 'package:phitness/src/common_widgets/check_out_button.dart';
import 'package:phitness/src/features/onboarding/onboarding_view.dart';
import 'package:phitness/src/utils/styles/app_style.dart';

class PreOnBoardingView extends StatelessWidget {
  const PreOnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Phitness',
                    style: AppStyle.h2Bold,
                  ),
                  Text(
                    'Everybody can train',
                    style: AppStyle.mediumRegular,
                  ),
                ],
              )),
            ),
            CheckOutButton(
              text: 'Get Started',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const OnboardingView();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

