import 'package:flutter/material.dart';

///This class is used to use common awarebox colors
class AwareboxColors {
  static Color backgroundLight = HexColor('#FFFFFF'); //Color(0xFFFFFFFF);
  static Color backgroundDark = HexColor('#333333');
  static Color backgroundGray = HexColor('#F5F5F5');

  static Color appTitle = HexColor('#333333');
  static Color title = HexColor('#333333');

  static Color hintText = HexColor('#A8A8A8');
  static Color hintTextLight = HexColor('#08A8A8A8');

  static Color whiteText = HexColor('#FFFFFF');
  static Color blackText = HexColor('#000000');
  static Color blackColor = HexColor('#000000');
  static Color transparentBlackColor = HexColor('#4C4C4C'); //.withOpacity(70);

  static Color orangeText = HexColor('#FFBB00');
  static Color red = HexColor('#FF0000');
  static Color lightRed = HexColor('FB6767');

  static Color whiteBG = HexColor('#FFFFFF');
  static Color silverBG = HexColor('#FBFBFB');

  static Color colorGreyLight = HexColor('#535350');
  static Color orangeBG = HexColor('#FFBB00'); //Color(0xFFEA6B4A);
  static Color orangeBGLight = HexColor('#30FFC034'); //Color(0xFFEA6B4A);

  static Color hintBG = HexColor('#9B9B9B');
  static Color dividerBG = HexColor('#E9E9E9');

  static Color shadowBG = HexColor("#FFD2E3");

  static Color loginTextFieldBG = HexColor("#F5F4F4");

  static Color loginTextField = HexColor("#F5F4F4");
  static Color darkText = HexColor("#09133C");

  static Color hintColor = HexColor("#707070");
  static Color iconGrey = HexColor("#545454");
  static Color languageIcon = HexColor("#FBE4A2");
  static Color text = HexColor("#f5f045");
  static Color textColor = HexColor("#f5f0f0");
  static Color textLightGrey = HexColor("#35BBBBBB");

  static Color hintTextDark = HexColor("4D4D4D");
  static Color lightGray = HexColor("918C8C");

  static Color hintLightGrey = HexColor("#A8A8A8");
  static Color hintLightGreyCapacity = HexColor("#78A8A8A8");
  static Color grayShadow = HexColor("#00000029");
  static Color grayDropShadow = HexColor("#DCDCDC");

  static Color greyHomeScreen = HexColor("#F7F7F7");
  static Color hintLightGreyCapacityEight = HexColor("#90A8A8A8");
  static Color colorWhite = HexColor("#EFEFEF");
  static Color colorBlue = HexColor("#2E78CC");
  static Color white = HexColor("#FFFFFF");

  static Color hintBGExtraLight = HexColor("#FAFAFA");
  static Color hintBGLight = HexColor("#F5F4F4");
  static Color lightGreyHome = HexColor("#F3F3F3");
  static Color backgroundText = HexColor("4D4D4D");

  //Mobile verify
  static Color orangeLightBG = HexColor('#FFBB00').withOpacity(37);

  static Color textGrey = HexColor("#AAAAAA");
  static Color loginTextFieldColor = const Color(0xffF5F4F4);

  static Color transparentBG = Colors.transparent;

  static Color darkRed = HexColor("#FB3E3E");
  static Color lighterRed = HexColor("#fb7675");
  static Color lightGreen = HexColor("#53B357");
  static Color aquamarine = HexColor("#CFFFD3");

  static Color crossRedColor = HexColor("#EA6F6B");
  static Color shadowColor = HexColor("##B4B4B4");
  static Color lightGrey = HexColor('#F8F8F8');
  static Color circleGrey = HexColor('#C8C3C3');
  static Color hintgray = HexColor("#918c8c");
  static Color gray = HexColor("#AAAAAA");
  static Color lightgrey = HexColor('#d3d3d3');
  static Color lightergrey = HexColor('#C5C2C2');
  static Color light = HexColor("#918c8c");
  static Color yellow = HexColor("#fcbb01");

  static const Color whiteDim = Color.fromRGBO(219, 219, 219, 1);
}

///This class is used to use convert 'hex color' in 'color'
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
