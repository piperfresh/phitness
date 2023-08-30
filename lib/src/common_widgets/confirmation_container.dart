import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phitness/src/utils/styles/app_color.dart';
import 'package:phitness/src/utils/styles/app_style.dart';

class ConfirmationContainer extends StatelessWidget {
  final String svgPicture;
  final String title;
  final String subtitle;

  const ConfirmationContainer({
    super.key,
    required this.svgPicture,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      height: 478,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Color(0XFF92a3fd),
            Color(0XFF9dceff),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(22),
        ),
      ),
      child: SizedBox(
        width: 275,
        height: 478,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SvgPicture.asset(svgPicture),
            const SizedBox(
              height: 30,
            ),
            Text(
              title,
              style: AppStyle.semiBold.copyWith(
                color: AppTextColor.whiteTextColor,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 110.0),
              child: Divider(
                thickness: 1.5,
                color: AppTextColor.whiteTextColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              subtitle,
              style: AppStyle.hintRegular
                  .copyWith(color: AppTextColor.whiteTextColor),
            )
          ],
        ),
      ),
    );
  }
}
