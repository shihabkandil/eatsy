import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constants/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.height,
      this.width,
      this.padding})
      : super(key: key);
  final String text;
  final void Function() onPressed;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          1.8.sh,
        ),
      ),
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              1.8.sh,
            ),
            gradient: AppColors.greenGradient),
        child: Container(
          height: height,
          width: width,
          padding: padding ?? EdgeInsets.symmetric(
            horizontal: 14.sw,
            vertical: 1.25.sh,
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
