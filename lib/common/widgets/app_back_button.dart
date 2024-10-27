import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: InkWell(
        onTap: () => context.maybePop(),
        borderRadius: BorderRadius.circular(12),
        child: DecoratedBox(
          decoration: ShapeDecoration(
            color: Colors.orangeAccent.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
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
