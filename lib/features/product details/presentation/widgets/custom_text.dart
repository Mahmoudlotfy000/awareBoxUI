import 'package:flutter/material.dart';

Widget customText(
    {Key? key,
      String? text,
      Color? color,
      double? fontSize,
      double? wordSpacing,
      TextAlign? textAlign,
      FontWeight? fontWeight,
      TextOverflow? overflow,
      int? maxLines,
      TextDecoration? decoration}) =>
    Text(
      text!,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: 'Montserrat',
        decoration: decoration,
        wordSpacing: wordSpacing,
      ),
      overflow: overflow,
      maxLines: maxLines,
    );