import 'package:flutter/material.dart';

class ExternalAppButton extends StatelessWidget {
  final void Function()? onTap;
  final String imageSource;

  const ExternalAppButton({
    super.key,
    this.onTap,
    required this.imageSource,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.6)),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: SizedBox(
          height: 60,
          width: 60,
          child: Image.asset(imageSource),
        ),
      ),
    );
  }
}