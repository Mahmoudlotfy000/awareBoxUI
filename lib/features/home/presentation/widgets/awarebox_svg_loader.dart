import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///This class used to display SVG Image
class AwareboxSVGLoader extends StatelessWidget {
  final Size svgSize;

  final String? urlImage;

   const AwareboxSVGLoader(
      {Key? key, required this.svgSize, required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _loadIcon();
  }

  //set svg icon
  Widget _loadIcon() {
    return SvgPicture.asset(
      urlImage!,
      height: svgSize.height,
      width: svgSize.width,
    );
  }
}
