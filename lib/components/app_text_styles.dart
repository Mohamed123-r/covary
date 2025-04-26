import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle style48W400(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 48),
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle style40W700(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 40),
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle style32W700(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 32),
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle style28W700(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 28),
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle style24W700(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 24),
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle style24W400(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 24),
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle style20W400(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 20),
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle style20W700(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 20),
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle style18W700(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 18),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle style18W400(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 18),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle style16W700(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 16),
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle style16W400(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle style14W400(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }
}

double getResponsiveScaleFactor(BuildContext context,
    {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = responsiveFontSize * 0.8;
  double upperLimit = responsiveFontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  if (width <= 600) {
    return width / 400;
  } else if (width <= 1200) {
    return width / 1200;
  } else {
    return width / 1750;
  }
}
