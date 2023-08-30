import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phitness/src/common_widgets/check_out_button.dart';
import 'package:phitness/src/features/welcome/main_screen.dart';
import 'package:phitness/src/utils/styles/app_color.dart';
import 'package:phitness/src/utils/styles/app_style.dart';

class PreHome extends StatelessWidget {
  const PreHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 110,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: SvgPicture.asset('assets/images/group.svg'),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Welcome, Abass',
              style: AppStyle.h4Bold,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'You are all set now, let’s reach your\n           goals together with us',
              style: AppStyle.hintRegular
                  .copyWith(color: AppTextColor.regularTextColor),
            ),
            const SizedBox(
              height: 160,
            ),
            CheckOutButton(text: 'Go To Home', onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MainView();
              }));
            },),
          ],
        ),
      ),
    );
  }
}
