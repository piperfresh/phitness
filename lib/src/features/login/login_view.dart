import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';
import 'package:phitness/src/common_widgets/app_text_field.dart';
import 'package:phitness/src/common_widgets/check_out_button.dart';
import 'package:phitness/src/common_widgets/external_app_button.dart';
import 'package:phitness/src/features/home/pre_home.dart';
import 'package:phitness/src/utils/styles/app_color.dart';
import 'package:phitness/src/utils/styles/app_style.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'Hey there',
                style: AppStyle.largeRegular,
              ),
            ),
            Center(
              child: Text(
                'Welcome Back',
                style: AppStyle.h4Bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             AppTextField(
              hintText: 'Email',
              icon: IconlyLight.message,
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: AppTextField2(
                hintText: 'Password',
                icon: IconlyLight.lock,
                suffixIcon: Icon(
                  IconlyLight.hide,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (){},
              child: Text(
                'Forgot your password?',
                style: AppStyle.mediumRegular
                    .copyWith(decoration: TextDecoration.underline),
              ),
            ),
            const SizedBox(
              height: 300,
            ),
            CheckOutButton2(
              text: 'Login',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const PreHome();
                }));
              },
              icon: IconlyBold.login,
            ),
            const SizedBox(
              height: 15,
            ),
           // Text('---------------------------------------- Or ------------------------------------------')
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/straightline.svg', width: 180,),
                Text(' Or ', style: AppStyle.displayRegular,),
                SvgPicture.asset('assets/images/straightline.svg', width: 180,)
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: Row(
                children: [
                  ExternalAppButton(
                    imageSource: 'assets/images/googleLogo.png',
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ExternalAppButton(
                    imageSource: 'assets/images/facebook 1.png',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: Row(
                children: [
                  Text(
                    "Don't have an account yet?",
                    style: AppStyle.mediumRegular2
                        .copyWith(color: AppTextColor.blackTextColor),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Text(
                      ' Register',
                      style: AppStyle.mediumRegular2.copyWith(
                        color: AppColor.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
