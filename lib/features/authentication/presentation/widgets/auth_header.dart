import 'package:flutter/material.dart';

import '../../../../common/constants/gen/assets.gen.dart';


class AuthHeader extends StatelessWidget {
  const AuthHeader({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.28,
          child: Transform.scale(
            scale: 1.6,
            child: Assets.images.logo.logoGreen.image(),
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
