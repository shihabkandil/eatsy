import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../common/constants/app_colors.dart';

class CustomAuthTextFormField extends StatelessWidget {
  const CustomAuthTextFormField({
    Key? key,
    this.hintText,
    this.onChanged,
    this.onSubmitted,
    this.isObscureText = false,
    this.prefixIconSvgPath,
  }) : super(key: key);
  final String? hintText;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final bool isObscureText;
  final String? prefixIconSvgPath;

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
          prefixIcon: prefixIconSvgPath != null
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.8.sw),
                  child: SvgPicture.asset(
                    prefixIconSvgPath!,
                  ),
                )
              : null,
          prefixIconConstraints:
              BoxConstraints.expand(width: 13.sw, height: 4.sh),
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
