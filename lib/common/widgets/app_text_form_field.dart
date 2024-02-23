import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constants/app_colors.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    Key? key,
    this.hintText,
    this.onChanged,
    this.onSubmitted,
    this.isObscureText = false,
    this.prefixIconSvgPath,
    this.focusNode,
    this.isPasswordField = false,
  }) : super(key: key);
  final String? hintText;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final bool isObscureText;
  final String? prefixIconSvgPath;
  final FocusNode? focusNode;
  final bool isPasswordField;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool isTextHidden = false;

  @override
  void initState() {
    isTextHidden = widget.isObscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0.25,
      shape: RoundedRectangleBorder(borderRadius: _getBorderRadius()),
      child: TextFormField(
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        focusNode: widget.focusNode,
        style: TextStyle(fontSize: 1.75.sh),
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onSubmitted,
        maxLines: 1,
        obscureText: isTextHidden,
        decoration: InputDecoration(
          suffixIcon: widget.isPasswordField
              ? InkWell(
                  splashFactory: NoSplash.splashFactory,
                  highlightColor: Colors.transparent,
                  onTap: () => setState(() => isTextHidden = !isTextHidden),
                  child: Icon(isTextHidden
                      ? CupertinoIcons.eye_slash_fill
                      : CupertinoIcons.eye_fill),
                )
              : null,
          prefixIcon: widget.prefixIconSvgPath != null
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.8.sw),
                  child: SvgPicture.asset(
                    widget.prefixIconSvgPath!,
                  ),
                )
              : null,
          prefixIconConstraints:
              BoxConstraints.expand(width: 13.sw, height: 4.sh),
          hintText: widget.hintText,
          border: OutlineInputBorder(
            borderRadius: _getBorderRadius(),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: _getBorderRadius(),
            borderSide: BorderSide(color: Colors.black12, width: 0.15.sw),
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
