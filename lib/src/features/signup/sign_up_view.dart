import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:phitness/src/common_widgets/check_out_button.dart';
import 'package:phitness/src/common_widgets/external_app_button.dart';
import 'package:phitness/src/features/signup/sign_up_view_continuation.dart';
import 'package:phitness/src/utils/styles/app_color.dart';

import '../../common_widgets/app_text_field.dart';
import '../../utils/styles/app_style.dart';

class SignUpView extends StatefulWidget {
  SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _validation = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  bool visibility = true;

  void toggleVisibility() {
    setState(() {
      visibility = !visibility;
    });
  }

  String _validatePasswords(String? password) {
    if (password!.isEmpty) {
      return "Please enter a password";
    } else if (password.length < 8) {
      return "Your password must be at least 8 characters";
    } else if (!containLettersAndNumbers(password)) {
      return "Password must contain letters and numbers";
    } else {
      return "Password accepted successfully";
    }
  }

  bool containLettersAndNumbers(String password) {
    final letters = RegExp(r'[a-zA-Z]');
    final numbers = RegExp(r'[0-9]');
    return letters.hasMatch(password) &&
        numbers.hasMatch(password) &&
        password.length >= 8;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: _validation,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Hey there',
                      style: AppStyle.largeRegular,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Create an account',
                      style: AppStyle.h4Bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AppTextField(
                    controller: _firstNameController,
                    hintText: 'First Name',
                    icon: IconlyLight.profile,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  AppTextField(
                    controller: _lastNameController,
                    hintText: 'Last Name',
                    icon: IconlyLight.profile,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  AppTextField(
                    validator:  (email) {
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(email!) ||
                          email.isEmpty) {
                        return "Enter correct email address";
                      } else {
                        return null;
                      }
                    },
                    controller: _emailController,
                    hintText: 'Email',
                    icon: IconlyLight.message,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  AppTextField(
                      controller: _passwordController,
                      hintText: 'Password',
                      obscureText: visibility,
                      validator: (password) {
                        if (password!.isEmpty ||
                            !containLettersAndNumbers(password)) {
                          return _validatePasswords(password);
                        } else {
                          return null;
                        }
                      },
                      icon: IconlyLight.lock,
                      suffixIcon: IconButton(
                        onPressed: () {
                          toggleVisibility();
                        },
                        icon: visibility
                            ? const Icon(IconlyLight.show)
                            : const Icon(IconlyLight.hide),
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (_) {},
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            ' By continuing you accept our Privacy Policy \n and Terms of Use',
                            style: AppStyle.hintRegular,
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  CheckOutButton(
                    text: 'Register',
                    onPressed: () {
                      if (_validation.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SignUpViewContinuation();
                        }));
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/straightline.svg',
                        width: 180,
                      ),
                      Text(
                        ' Or ',
                        style: AppStyle.displayRegular,
                      ),
                      SvgPicture.asset(
                        'assets/images/straightline.svg',
                        width: 180,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 125),
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
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70.0),
                    child: Row(
                      children: [
                        Text(
                          'Already have an account?',
                          style: AppStyle.mediumRegular2
                              .copyWith(color: AppTextColor.blackTextColor),
                        ),
                        Text(
                          ' Login',
                          style: AppStyle.mediumRegular2.copyWith(
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
