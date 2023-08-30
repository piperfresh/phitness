import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phitness/src/utils/styles/app_style.dart';

class OnboardingWidget extends StatelessWidget {
  final String imageName;
  final String onboardingTextTitle;
  final String onboardingTextDescription;

  const OnboardingWidget(
      {super.key,
      required this.imageName,
      required this.onboardingTextTitle,
      required this.onboardingTextDescription});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: SvgPicture.asset(
            imageName,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            onboardingTextTitle,
            style: AppStyle.h2Bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            onboardingTextDescription,
            style: AppStyle.mediumRegular,
          ),
        ),
      ],
    );
  }
}
