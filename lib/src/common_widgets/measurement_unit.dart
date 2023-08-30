import 'package:flutter/material.dart';
import 'package:phitness/src/utils/styles/app_color.dart';

class MeasurementUnit extends StatelessWidget {
  final void Function()? onTap;
  final String text;

  const MeasurementUnit({
    super.key,
    this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: AppColor.containerColor,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          height: 48,
          width: 48,
          child: Center(
              child: Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
