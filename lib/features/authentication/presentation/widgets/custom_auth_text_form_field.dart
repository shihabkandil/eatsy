import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../common/constants/app_colors.dart';

class CustomAuthTextFormField extends StatelessWidget {
  const CustomAuthTextFormField({
    Key? key,
    this.hintText,
    this.onChanged,
    this.onSubmitted,
    this.isObscureText = false,
  }) : super(key: key);
  final String? hintText;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final bool isObscureText;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: _getBorderRadius()),
      child: TextFormField(
        onChanged: onChanged,
        onFieldSubmitted: onSubmitted,
        maxLines: 1,
        obscureText: isObscureText,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: _getBorderRadius(),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: _getBorderRadius(),
            borderSide: BorderSide(color: Colors.black12, width: 0.25.sw),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: _getBorderRadius(),
            borderSide: BorderSide(color: AppColors.lightGreen, width: 0.25.sw),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 5.sw,
            vertical: 2.sh,
          ),
        ),
      ),
    );
  }

  BorderRadius _getBorderRadius() {
    return BorderRadius.circular(2.sh);
  }
}
