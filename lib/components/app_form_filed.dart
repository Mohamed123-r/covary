import 'package:flutter/material.dart';

import '../constant.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppInputTextFormField extends StatelessWidget {
  const AppInputTextFormField(
      {super.key,
      required this.labelText,
      this.prefixIcon,
      this.suffixIcon,
      this.onChanged,
      this.obscureText,
      this.validator,
      this.keyboardType,
      this.controller});

  final String labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function(String?)? onChanged;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: SizedBox(
        width: 500,
        height: 64,
        child: Center(
          child: TextFormField(
            cursorColor: AppColors.black,
            controller: controller,
            obscureText: obscureText ?? false,
            keyboardType: keyboardType ?? TextInputType.text,
            onChanged: onChanged,
            validator: validator,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              filled: true,
              fillColor: AppColors.white,
              labelText: labelText,
              labelStyle: AppTextStyles.style18W400(context).copyWith(
                color: AppColors.grey,
              ),
              prefixIcon: prefixIcon,
              prefixIconColor: AppColors.grey,
              suffixIcon: suffixIcon,
              suffixIconColor: AppColors.grey,
              enabledBorder: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(),
              disabledBorder: buildOutlineInputBorder(),
              errorBorder: buildOutlineInputBorder(),
              border: buildOutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(18),
    borderSide: BorderSide(
      width: 1,
      color: AppColors.border,
    ),
  );
}

class AppPassInputTextFormField extends StatefulWidget {
  const AppPassInputTextFormField(
      {super.key,
      this.validator,
      required this.labelText,
      this.onChanged,
      this.controller,
      this.prefixIcon});

  final String? Function(String?)? validator;
  final String labelText;

  final void Function(String?)? onChanged;
  final TextEditingController? controller;
  final Widget? prefixIcon;

  @override
  State<AppPassInputTextFormField> createState() =>
      _AppPassInputTextFormFieldState();
}

class _AppPassInputTextFormFieldState extends State<AppPassInputTextFormField> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return AppInputTextFormField(
      controller: widget.controller,
      labelText: widget.labelText,
      onChanged: widget.onChanged,
      validator: widget.validator,
      prefixIcon: widget.prefixIcon,
      obscureText: isHidden,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            isHidden = !isHidden;
          });
        },
        icon: isHidden
            ? const Icon(Icons.visibility_off_outlined)
            : const Icon(Icons.visibility_outlined),
      ),
    );
  }
}

class AppSearchTextFormField extends StatelessWidget {
  const AppSearchTextFormField(
      {super.key,
      required this.labelText,
      this.prefixIcon,
      this.onChanged,
      this.obscureText,
      this.validator,
      this.keyboardType,
      this.controller});

  final String labelText;
  final Widget? prefixIcon;
  final void Function(String?)? onChanged;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: SizedBox(
        width: 430,
        height: 56,
        child: Center(
          child: TextFormField(
            cursorColor: AppColors.black,
            controller: controller,
            obscureText: obscureText ?? false,
            keyboardType: keyboardType ?? TextInputType.text,
            onChanged: onChanged,
            validator: validator,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              filled: true,
              fillColor: AppColors.white,
              labelText: labelText,
              labelStyle: AppTextStyles.style18W400(context).copyWith(
                color: AppColors.grey,
              ),
              prefixIcon: Icon(
                Icons.search_outlined,
                color: AppColors.black,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
                borderSide: BorderSide(
                  width: 1,
                  color: AppColors.border,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
                borderSide: BorderSide(
                  width: 1,
                  color: AppColors.border,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
                borderSide: BorderSide(
                  width: 1,
                  color: AppColors.border,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
                borderSide: BorderSide(
                  width: 1,
                  color: AppColors.border,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
                borderSide: BorderSide(
                  width: 1,
                  color: AppColors.border,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
