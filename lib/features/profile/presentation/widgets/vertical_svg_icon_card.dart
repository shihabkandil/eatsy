import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/constants/ui_constants.dart';

class VerticalSvgIconCard extends StatelessWidget {
  const VerticalSvgIconCard(
      {super.key,
      required this.svgPath,
      required this.text,
      required this.onPressed,
      this.width,
      this.height,});

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
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          onTap: onPressed,
          splashColor: AppColors.lightGreen.withOpacity(0.15),
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
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
