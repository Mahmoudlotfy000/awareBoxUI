import 'package:awareboxui/core/utils/mediaquery.dart';
import 'package:awareboxui/core/utils/value_manager.dart';
import 'package:awareboxui/features/home/presentation/widgets/awarebox_image_loader.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/awarebox_colors.dart';

class AdvertismntWidget extends StatelessWidget {
  const AdvertismntWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://jssors8.azureedge.net/demos/img/gallery/980x380/011.jpg",
      "https://jssors8.azureedge.net/demos/img/gallery/980x380/013.jpg",
      "https://jssors8.azureedge.net/demos/img/gallery/980x380/043.jpg",
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p14, vertical: AppPadding.p12),
      child: Container(
        color: AwareboxColors.lightGreyHome,
        width: kwidth(context),
        child: CarouselSlider.builder(
          options: CarouselOptions(
            initialPage: 0,
            viewportFraction: 1,
            autoPlay: true,
            height: kheight(context) / 7,
            autoPlayAnimationDuration: const Duration(milliseconds: 100),
          ),
          itemCount: images.length,
          itemBuilder: (context, index, realIndex) => ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.s14),
            child: Stack(
              children: [
                Container(
                  height: kheight(context) / 6,
                  width: kwidth(context),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: AppImageLoader.withImage(
                    imageUrl: images[index],
                    imageType: ImageType.NETWORK,
                    showCircleImage: true,
                    roundCorners: true,
                    isProfileImage: false,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: kwidth(context),
                    height: 20,
                    decoration: BoxDecoration(
                        color: AwareboxColors.whiteBG.withOpacity(0.5)),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: DotsIndicator(
                    dotsCount: images.length,
                    position: index.toDouble(),
                    decorator: DotsDecorator(
                      color: AwareboxColors.orangeBG,
                      activeColor: AwareboxColors.whiteBG,
                      activeSize: const Size.square(10),
                      size: const Size.square(5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
