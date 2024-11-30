import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.height,
      this.width,
      this.padding,})
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
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: AppColors.greenGradient,),
        child: Container(
          height: height,
          width: width,
          padding: padding ??
              const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
