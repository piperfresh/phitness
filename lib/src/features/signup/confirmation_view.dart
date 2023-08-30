import 'package:flutter/material.dart';
import 'package:phitness/src/common_widgets/check_out_button.dart';
import 'package:phitness/src/common_widgets/confirmation_container.dart';
import 'package:phitness/src/features/login/login_view.dart';
import 'package:phitness/src/utils/styles/app_style.dart';

class ConfirmationView extends StatefulWidget {
  const ConfirmationView({super.key});

  @override
  State<ConfirmationView> createState() => _ConfirmationViewState();
}

class _ConfirmationViewState extends State<ConfirmationView> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              'What is your goal?',
              style: AppStyle.h4Bold,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Center(
            child: Text(
              'It will help us to choose a best\n            program for you',
              style: AppStyle.hintRegular,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 275,
            height: 478,
            child: PageView(
                pageSnapping: true,
                allowImplicitScrolling: true,
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: const [
                  ConfirmationContainer(
                    svgPicture: 'assets/images/weightlift.svg',
                    title: 'Improve Shape',
                    subtitle:
                        'I have a low amount of body fat\n and need / want to build more\n                     muscle',
                  ),
                  ConfirmationContainer(
                    svgPicture: 'assets/images/skippingrope.svg',
                    title: 'Lean & Tone',
                    subtitle:
                        'I’m “skinny fat”. look thin but have\n    no shape. I want to add learn\n          muscle in the right way',
                  ),
                  ConfirmationContainer(
                    svgPicture: 'assets/images/running.svg',
                    title: 'Lose a fat',
                    subtitle:
                        'I have over 20 lbs to lose. I want to\n drop all this fat and gain muscle\n                           mass',
                  )
                ]),
          ),
          const SizedBox(
            height: 40,
          ),
          CheckOutButton(
            text: 'Confirm',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const LoginView();
              }));
            },
          )
        ],
      ),
    );
  }
}
