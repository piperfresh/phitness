import 'package:flutter/material.dart';
import 'package:phitness/src/common_widgets/app_text_field.dart';
import 'package:phitness/src/common_widgets/measurement_unit.dart';

class AppTextFieldWithMeasurement extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppTextFieldWithMeasurement({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 340,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: 280,
              child: AppTextField2(
                hintText: 'Your Weight',
                icon: icon,
              )),
          MeasurementUnit(text: text),
        ],
      ),
    );
  }
}
