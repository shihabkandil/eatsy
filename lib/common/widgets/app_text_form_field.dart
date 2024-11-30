import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        style: const TextStyle(fontSize: 16),
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
                      : CupertinoIcons.eye_fill,),
                )
              : null,
          prefixIcon: widget.prefixIconSvgPath != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: SvgPicture.asset(
                    widget.prefixIconSvgPath!,
                  ),
                )
              : null,
          prefixIconConstraints:
              const BoxConstraints.expand(width: 20, height: 16),
          hintText: widget.hintText,
          border: OutlineInputBorder(
            borderRadius: _getBorderRadius(),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: _getBorderRadius(),
            borderSide: const BorderSide(color: Colors.black12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: _getBorderRadius(),
            borderSide: const BorderSide(color: AppColors.lightGreen),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
        ),
      ),
    );
  }

  BorderRadius _getBorderRadius() {
    return BorderRadius.circular(16);
  }
}
