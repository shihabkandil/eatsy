import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 5.screenHeight,
      height: 5.screenHeight,
      child: InkWell(
        onTap: () => context.popRoute(),
        borderRadius: BorderRadius.circular(
          1.6.screenHeight,
        ),
        child: DecoratedBox(
          decoration: ShapeDecoration(
            color: Colors.orangeAccent.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                1.6.screenHeight,
              ),
            ),
          ),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.deepOrangeAccent,
          ),
        ),
      ),
    );
  }
}
