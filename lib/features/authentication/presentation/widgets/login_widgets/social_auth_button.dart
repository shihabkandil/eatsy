import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../common/constants/app_colors.dart';

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({
    Key? key,
    required this.text,
    required this.assetPath,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final String assetPath;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      height: 6.5.sh,
      elevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      splashColor: AppColors.lightGreen.withOpacity(0.25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          2.sh,
        ),
        side: BorderSide(
          color: Colors.black.withOpacity(0.1),
          width: 0.25.sw,
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          SvgPicture.asset(assetPath, width: 4.sh),
          SizedBox(
            width: 3.sw,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 2.sh, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
