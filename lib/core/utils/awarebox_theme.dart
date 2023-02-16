import 'package:flutter/material.dart';
import 'awarebox_colors.dart';

ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
        color: AwareboxColors.transparentBG,
        iconTheme: IconThemeData(
          color: AwareboxColors.blackColor,
        ),
        toolbarTextStyle: TextTheme(
          headline6: TextStyle(
            fontFamily: 'Montserrat',
            color: AwareboxColors.blackColor,
          ),
        ).bodyText2,
        titleTextStyle: TextTheme(
          headline6: TextStyle(
            fontFamily: 'Montserrat',
            color: AwareboxColors.blackColor,
          ),
        ).headline6));
