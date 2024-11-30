import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../common/constants/app_colors.dart';

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({
    Key? key,
    required this.text,
    required this.assetPath,
    required this.onPressed,
    this.background = Colors.white,
    this.textColor = Colors.black,
  }) : super(key: key);
  final String text;
  final String assetPath;
  final void Function() onPressed;
  final Color background;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.maxFinite,
        child: MaterialButton(
          color: background,
          height: 50,
          elevation: 0,
          focusElevation: 0,
          highlightElevation: 0,
          splashColor: AppColors.lightGreen.withOpacity(0.25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: Colors.black.withOpacity(0.1),
              width: 1,
            ),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(assetPath, width: 20),
              const SizedBox(width: 20),
              Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
