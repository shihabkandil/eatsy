import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../common/constants/app_colors.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });

  final String imagePath;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          imagePath,
          height: 48.sh,
        ),
        SizedBox(height: 5.sh),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.sw),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.lightGreen,
              fontSize: 3.sh,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 2.sh,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.sw),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black38,
              fontSize: 2.5.sh,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
