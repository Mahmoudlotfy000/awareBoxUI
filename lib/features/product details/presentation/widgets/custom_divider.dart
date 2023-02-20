
import 'package:awareboxui/core/utils/awarebox_colors.dart';
import 'package:flutter/material.dart';

Widget customDivider({
  Key? key,
  double? top,
  double? bottom,
}) =>
    Container(
        margin: EdgeInsets.fromLTRB(0, top!, 0, bottom!),
        height: 0.1,
        color: AwareboxColors.blackColor
    );
