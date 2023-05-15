import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../common/constants/assets_paths.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          width: 50.screenWidth,
          AssetsPaths.logo,
        ),
        SizedBox(
          height: 4.sh,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 3.sh,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
