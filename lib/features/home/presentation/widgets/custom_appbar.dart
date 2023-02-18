import 'package:awareboxui/core/utils/awarebox_colors.dart';
import 'package:awareboxui/core/utils/value_manager.dart';
import 'package:awareboxui/features/home/presentation/widgets/awarebox_image_loader.dart';
import 'package:awareboxui/features/home/presentation/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/awarebox_textstyle.dart';
import '../../../../core/utils/mediaquery.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108,
      width: kwidth(context),
      decoration: BoxDecoration(
          color: AwareboxColors.whiteBG,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(AppSize.s18),
            bottomLeft: Radius.circular(AppSize.s18),
          )),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: AwareboxColors.whiteBG,
                        boxShadow: [
                          BoxShadow(
                            color: AwareboxColors.shadowColor,
                            spreadRadius: 0.0,
                            blurRadius: 1,
                            offset: const Offset(0, 1),
                          ),
                        ],
                        shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart_outlined)),
                  ),
                ),
                Container(
                  width: 40,
                    height: 40,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                       border: Border.all(color: AwareboxColors.white),),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                       border: Border.all(color: AwareboxColors.lightGreen),
                        color: AwareboxColors.whiteBG,
                        boxShadow: [
                          
                          BoxShadow(
                            color: AwareboxColors.shadowColor,
                            spreadRadius: 0.0,
                            blurRadius: 1,
                            offset: const Offset(0, 1),
                          ),
                        ],
                        shape: BoxShape.circle),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppSize.s50),
                      child: AppImageLoader.withImage(
                        imageUrl:
                            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg",
                        imageType: ImageType.NETWORK,
                        showCircleImage: true,
                        roundCorners: true,
                        isProfileImage: true,
                      ),
                    ),
                  ),
                   
                ),
                const Spacer(),
                Text(
                  "awareBox",
                  style: appTitleBadUnicorn("Bad Unicorn"),
                ),
              ],
            ),
            
          ),
          const HomeSearchWidget()
        ],
      ),
    );
  }
}
