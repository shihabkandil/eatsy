import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:food_ninja/common/constants/app_colors.dart';
import 'package:food_ninja/common/constants/image_path.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/on_boarding_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Login',
      onFinish: () {
        ///TODO Navigate to LoginRoute implementation
      },
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: AppColors.lightGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1.sh),
        ),
      ),
      controllerColor: AppColors.lightGreen,
      totalPage: 2,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      centerBackground: true,
      background: const [SizedBox(), SizedBox()],
      speed: 1.8,
      pageBodies: const [
        OnBoardingBody(
          title: 'Find your Comfort Food here',
          subTitle:
              'Here You Can find a chef or dish for every taste and color. Enjoy!',
          imagePath: ImagePath.firstOnBoarding,
        ),
        OnBoardingBody(
          imagePath: ImagePath.secondOnBoarding,
          title: 'Food Ninja is Where Your Comfort Food Lives',
          subTitle: 'Enjoy a fast and smooth food delivery at your doorstep',
        ),
      ],
    );
  }
}
