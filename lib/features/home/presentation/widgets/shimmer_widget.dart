import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/utils/awarebox_colors.dart';

class ShimmerWidget extends StatelessWidget {
  ThemeData? themeData;
  final Widget child;
  final Duration ?period;
  final int ?loop;
  final bool ?enabled;
  final Color? baseColor;
  final Color? highlightColor;

  ShimmerWidget({
    Key? key,
    required this.child,
    this.period = const Duration(milliseconds: 1500),
    this.loop = 0,
    this.enabled = true,
    this.baseColor,
    this.highlightColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: period ?? const Duration(milliseconds: 600),
      baseColor: baseColor ?? AwareboxColors.whiteDim.withOpacity(0.6),
      highlightColor: highlightColor ?? AwareboxColors.whiteBG,
      loop: loop!,
      enabled: enabled!,
      child: child,
    );
  }
}
