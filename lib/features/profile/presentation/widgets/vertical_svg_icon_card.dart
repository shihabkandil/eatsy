import 'package:eatsy/common/constants/ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../common/constants/app_colors.dart';

class VerticalSvgIconCard extends StatelessWidget {
  const VerticalSvgIconCard(
      {super.key,
      required this.svgPath,
      required this.text,
      required this.onPressed,
      this.width,
      this.height});

  final String svgPath;
  final String text;
  final void Function() onPressed;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [UiConstants.cardBoxShadow],
          borderRadius: BorderRadius.circular(
            2.screenHeight,
          ),
        ),
        child: InkWell(
          onTap: onPressed,
          splashColor: AppColors.lightGreen.withOpacity(0.15),
          borderRadius: BorderRadius.circular(
            2.screenHeight,
          ),
          child: Padding(
            padding: EdgeInsets.all(8.screenWidth),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(svgPath),
                Text(text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
