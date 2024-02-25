import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SetLocationCard extends StatelessWidget {
  const SetLocationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.screenHeight,
      width: double.maxFinite,
      child: ElevatedButton(
        style: TextButton.styleFrom(
          splashFactory: NoSplash.splashFactory,
          backgroundColor: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              2.screenHeight,
            ),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Set Location',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}