import 'package:awareboxui/core/utils/awarebox_textstyle.dart';
import 'package:flutter/material.dart';
import 'awarebox_colors.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AwareboxColors.backgroundGray,
  appBarTheme: AppBarTheme(
      color: AwareboxColors.whiteBG,
      iconTheme: IconThemeData(
        color: AwareboxColors.blackColor,
      ),
      toolbarTextStyle: TextTheme(
        titleLarge: TextStyle(
          fontFamily: 'Montserrat',
          color: AwareboxColors.blackColor,
        ),
      ).bodyMedium,
      titleTextStyle: TextTheme(
        titleLarge: TextStyle(
          color: AwareboxColors.blackColor,
        ),
      ).titleLarge),
          bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      backgroundColor: AwareboxColors.whiteBG,
      elevation: 0.3,
      selectedItemColor: AwareboxColors.orangeBG,
      selectedIconTheme: IconThemeData(color: AwareboxColors.orangeBG),
      unselectedIconTheme: IconThemeData(color: AwareboxColors.gray),
      selectedLabelStyle: const TextStyle(fontSize: 12),
      unselectedLabelStyle: const TextStyle(fontSize: 12),
 type: BottomNavigationBarType.fixed
    ),
     
);
