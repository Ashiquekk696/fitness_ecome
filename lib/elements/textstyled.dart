import 'package:flutter/material.dart';

class AppTextStyle {
  static smallTitle({Color? color, double? size, FontWeight? fontWeight}) =>
      _textStyle(
          color: color ?? Colors.black,
          size: size ?? 13,
          fontWeight: fontWeight ?? FontWeight.w500);
  static mediumTitle({Color? color, double? size, FontWeight? fontWeight}) =>
      _textStyle(
          color: color,
          size: size ?? 14,
          fontWeight: fontWeight ?? FontWeight.w700);

  static largeTitle({Color? color, double? size, FontWeight? fontWeight}) =>
      _textStyle(
          color: color ?? Colors.black,
          size: size ?? 16,
          fontWeight: fontWeight ?? FontWeight.w700);

  static smallBodyText({Color? color, double? size, FontWeight? fontWeight}) =>
      _textStyle(
          color: color,
          size: size ?? 12,
          fontWeight: fontWeight ?? FontWeight.w400);

  static mediumBodyText({Color? color, double? size, FontWeight? fontWeight}) =>
      _textStyle(
          color: color,
          size: size ?? 13,
          fontWeight: fontWeight ?? FontWeight.w400);
}

TextStyle _textStyle(
    {String? fontFamily, Color? color, double? size, FontWeight? fontWeight}) {
  return TextStyle(
    fontFamily: fontFamily ?? "Lato",
    color: color,
    fontSize: size,
    fontWeight: fontWeight,
  );
}
