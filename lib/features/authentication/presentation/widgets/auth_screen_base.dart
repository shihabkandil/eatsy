import 'package:flutter/material.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../gen/assets.gen.dart';

class AuthScreenBase extends StatelessWidget {
  const AuthScreenBase(
      {Key? key, required this.child, this.alignment = Alignment.center})
      : super(key: key);
  final Widget child;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      body: Stack(
        alignment: alignment,
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  Assets.images.lightSplashPattern.path,
                ),
                opacity: 0.6,
                fit: BoxFit.cover,
              ),
            ),
          ),
          child
        ],
      ),
    );
  }
}
