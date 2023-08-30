import 'package:flutter/material.dart';
import 'package:phitness/src/common_widgets/onboarding_widget.dart';
import 'package:phitness/src/features/signup/sign_up_view.dart';
import 'package:phitness/src/utils/constants/app_strings.dart';
import 'package:phitness/src/utils/styles/app_color.dart';
import 'package:iconly/iconly.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          children: const [
            OnboardingWidget(
              imageName: 'assets/images/onboarding1.svg',
              onboardingTextTitle: 'Track Your Goal',
              onboardingTextDescription: AppStrings.onboardingTextDescription1,
            ),
            OnboardingWidget(
              imageName: 'assets/images/onboarding2.svg',
              onboardingTextTitle: 'Get Burn',
              onboardingTextDescription: AppStrings.onboardingTextDescription2,
            ),
            OnboardingWidget(
              imageName: 'assets/images/onboarding3.svg',
              onboardingTextTitle: 'Eat Well',
              onboardingTextDescription: AppStrings.onboardingTextDescription3,
            ),
            OnboardingWidget(
              imageName: 'assets/images/onboarding4.svg',
              onboardingTextTitle: 'Improve Sleep Quality',
              onboardingTextDescription: AppStrings.onboardingTextDescription4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        child: const CircleAvatar(
          backgroundColor: AppColor.primaryColor,
          radius: 28,
          child: Icon(
            IconlyLight.arrow_right_2,

            color: AppColor.secondaryColor,
          ),
        ),

        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
            return  SignUpView();
          }));
        },

      ),
    );
  }
}
