import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';
import 'package:phitness/src/common_widgets/app_text_field.dart';
import 'package:phitness/src/common_widgets/app_text_field_with_measurement.dart';
import 'package:phitness/src/common_widgets/check_out_button.dart';
import 'package:phitness/src/features/signup/confirmation_view.dart';
import 'package:phitness/src/utils/styles/app_color.dart';
import 'package:phitness/src/utils/styles/app_style.dart';

class SignUpViewContinuation extends StatelessWidget {
  const SignUpViewContinuation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: SvgPicture.asset('assets/images/Vector-Section.svg'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Let's complete your profile",
              style: AppStyle.h4Bold,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'It will help us to know more about you',
              style: AppStyle.hintRegular.copyWith(
                color: AppTextColor.regularTextColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             AppTextField(
              hintText: 'Choose Gender',
              icon: IconlyLight.user,
              suffixIcon: Icon(IconlyLight.arrow_down_2),
            ),
            const SizedBox(
              height: 10,
            ),
             AppTextField(
              hintText: 'Date of Birth',
              icon: IconlyLight.calendar,
            ),
            const SizedBox(
              height: 10,
            ),
            const AppTextFieldWithMeasurement(
              icon: IconlyLight.work,
              text: 'KG',
            ),
            const SizedBox(
              height: 10,
            ),
            const AppTextFieldWithMeasurement(
              icon: IconlyLight.swap,
              text: 'CM',
            ),
            const SizedBox(
              height: 10,
            ),
            CheckOutButton(
              text: 'Next >',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const ConfirmationView();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
