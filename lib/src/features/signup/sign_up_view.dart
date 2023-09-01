import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:phitness/src/common_widgets/check_out_button.dart';
import 'package:phitness/src/common_widgets/external_app_button.dart';
import 'package:phitness/src/features/signup/sign_up_view_continuation.dart';
import 'package:phitness/src/features/signup/sign_up_view_model.dart';
import 'package:phitness/src/utils/styles/app_color.dart';
import 'package:provider/provider.dart';

import '../../common_widgets/app_text_field.dart';
import '../../utils/styles/app_style.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SignUpViewModel>(
        builder: (context, signUpProvider, child) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: signUpProvider.validation,
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
                      validator: (firstname) {
                        if (firstname!.isEmpty) {
                          return "Firstname must not be empty";
                        }
                        return null;
                      },
                      controller: signUpProvider.firstNameController,
                      hintText: 'First Name',
                      icon: IconlyLight.profile,
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    AppTextField(
                      validator: (lastname) {
                        if (lastname!.isEmpty) {
                          return "Lastname must not be empty";
                        } else {
                          return null;
                        }
                      },
                      controller: signUpProvider.lastNameController,
                      hintText: 'Last Name',
                      icon: IconlyLight.profile,
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    AppTextField(
                      validator: (email) {
                        if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                .hasMatch(email!) ||
                            email.isEmpty) {
                          return "Enter correct email address";
                        } else {
                          return null;
                        }
                      },
                      controller: signUpProvider.emailController,
                      hintText: 'Email',
                      icon: IconlyLight.message,
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    AppTextField(
                        controller: signUpProvider.passwordController,
                        hintText: 'Password',
                        obscureText: signUpProvider.visibility,
                        validator: (password) {
                          if (password!.isEmpty ||
                              !signUpProvider
                                  .containLettersAndNumbers(password)) {
                            return signUpProvider.validatePasswords(password);
                          } else {
                            return null;
                          }
                        },
                        icon: IconlyLight.lock,
                        suffixIcon: IconButton(
                          onPressed: () {
                            signUpProvider.toggleVisibility();
                          },
                          icon: signUpProvider.visibility
                              ? const Icon(IconlyLight.show)
                              : const Icon(IconlyLight.hide),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: signUpProvider.isTermChecked,
                                onChanged: (newValue) {
                                  signUpProvider.termChecked(newValue);
                                },
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
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: !signUpProvider.isTermChecked
                                ? const Text(
                                    'Required',
                                    style: TextStyle(
                                      color: Color(0xffe53935),
                                      fontSize: 12,
                                    ),
                                  )
                                : null,
                          ),
                        ],
                      ),
                    ),
                    // CheckboxListTile(
                    //   // value: signUpProvider.isTermChecked,
                    //   // onChanged: (newValue) {
                    //   //  signUpProvider.toggleCheckBoxValue(newValue);
                    //   // }
                    //   title: Text('I agree to'),
                    //   value: signUpProvider.isTermChecked,
                    //   onChanged: (newValue) {
                    //     signUpProvider.termChecked(newValue);
                    //   },
                    //   subtitle: !signUpProvider.isTermChecked
                    //       ? Padding(
                    //           padding: EdgeInsets.fromLTRB(12.0, 0, 0, 0),
                    //           child: Text(
                    //             'Required field',
                    //             style: TextStyle(
                    //                 color: Color(0xFFe53935), fontSize: 12),
                    //           ),
                    //         )
                    //       : null,
                    // ),
                    const SizedBox(
                      height: 10,
                    ),
                    CheckOutButton(
                      text: 'Register',
                      onPressed: () {
                        if (signUpProvider.validation.currentState!
                            .validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const SignUpViewContinuation();
                              },
                            ),
                          );
                        } else {
                          return;
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
      ),
    );
  }
}
