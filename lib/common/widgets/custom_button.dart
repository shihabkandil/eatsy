import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          1.8.sh,
        ),
      ),
      onPressed: onPressed,
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              1.8.sh,
            ),
            gradient: AppColors.greenGradient),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 6.sh,
            vertical: 2.sh,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              1.8.sh,
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 2.sh,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
