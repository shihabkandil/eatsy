import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/common/constants/app_colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({
    Key? key,
    required this.text,
    required this.assetPath,
  }) : super(key: key);
  final String text;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      height: 6.5.sh,
      elevation: 0.5,
      focusElevation: 0,
      highlightElevation: 0,
      splashColor: AppColors.lightGreen.withOpacity(0.25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          2.sh,
        ),
        side: BorderSide(
          color: Colors.black12,
          width: 0.4.sw,
        ),
      ),
      onPressed: () {},
      child: Row(
        children: [
          SvgPicture.asset(assetPath, width: 4.sh),
          SizedBox(
            width: 3.sw,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 2.4.sh, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
