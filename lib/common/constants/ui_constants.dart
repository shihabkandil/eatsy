import 'package:flutter/material.dart';

import 'app_colors.dart';

class UiConstants {
  const UiConstants._();

  static final cardBoxShadow = BoxShadow(
    color: AppColors.lightGreen.withOpacity(0.25),
    blurRadius: 5,
    offset: const Offset(0, 2),
    spreadRadius: 0.5,
  );
}
