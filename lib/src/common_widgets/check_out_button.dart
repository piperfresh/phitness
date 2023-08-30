import 'package:flutter/material.dart';
import 'package:phitness/src/utils/styles/app_color.dart';
import 'package:phitness/src/utils/styles/app_style.dart';

class CheckOutButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final void Function()? onPressed;

  const CheckOutButton({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ButtonTheme(
          minWidth: 315,
          height: 60,
          child: MaterialButton(
            color: AppColor.primaryColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: AppStyle.largeMedium.copyWith(
                color: AppTextColor.whiteTextColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CheckOutButton2 extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onPressed;

  const CheckOutButton2({
    super.key,
    required this.text,
    this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ButtonTheme(
          minWidth: 315,
          height: 60,
          child: MaterialButton(
            color: AppColor.primaryColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: AppTextColor.whiteTextColor,),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: AppStyle.largeMedium.copyWith(
                    color: AppTextColor.whiteTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
