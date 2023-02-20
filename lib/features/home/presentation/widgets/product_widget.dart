import 'package:awareboxui/core/utils/awarebox_textstyle.dart';
import 'package:awareboxui/core/utils/mediaquery.dart';
import 'package:awareboxui/core/utils/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../../../core/utils/asset_icons.dart';
import '../../../../core/utils/awarebox_colors.dart';
import 'awarebox_image_loader.dart';
import 'awarebox_svg_loader.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Card(
          margin: const EdgeInsets.only(
            left: AppPadding.p5,
            top: AppPadding.p5,
            right: AppPadding.p5,
          ),
          clipBehavior: Clip.antiAlias,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(AppSize.s14),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                splashColor: AwareboxColors.transparentBG,
                highlightColor: AwareboxColors.transparentBG,
                onTap: ()  {
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        //Product Image
                        SizedBox(
                          height: height(context) / 3.3,
                          width: width(context) / 2,
                          child: AppImageLoader.withImage(
                              imageUrl:
                                  "https://cdn.photoworkout.com/images/ideas/product-photography-ideas/Natural%20Shadows.jpg",
                              imageType: ImageType.NETWORK,
                              showCircleImage: false,
                              boxFit: BoxFit.cover,
                              roundCorners: true),
                        ),

                        //Product views count
                        Positioned(
                            top: 00.00,
                            right: 00.00,
                            child: Padding(
                              padding: const EdgeInsets.all(AppPadding.p5),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: AwareboxColors.whiteBG,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(AppPadding.p5),
                                  child: Row(children: <Widget>[
                                    Container(
                                      color: AwareboxColors.whiteBG,
                                      child: const AwareboxSVGLoader(
                                        urlImage: AssetIcons.eye,
                                        svgSize: Size(6, 6),
                                      ),
                                    ),
                                    Text(' 10',
                                        style: getRegularStyle(
                                            color: AwareboxColors.blackText)),
                                  ]),
                                ),
                              ),
                            )),
                      ],
                    ),

                    // product name
                    Container(
                      height: 25,
                      color: AwareboxColors.transparentBG,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p8,
                              vertical: AppPadding.p3),
                          child: Text("productName",
                              maxLines: 1,
                              textAlign: TextAlign.left,
                              style: getBoldStyle(
                                  color: AwareboxColors.blackText))),
                    ),
                  ],
                ),
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Padding(
                  padding: const EdgeInsets.only(left: AppPadding.p8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      //store icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const AwareboxSVGLoader(
                            urlImage: AssetIcons.store,
                            svgSize: Size(15, 15),
                          ),
                          const SizedBox(width: AppPadding.p2),
                          //seller label
                          Text(
                            'Seller',
                            style: getRegularStyle(
                                color: AwareboxColors.blackText), //fontSize
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),

                      const SizedBox(width: AppSize.s4),
                      //seller name
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            print("open seller store profile");
                          },
                          child: RichText(
                            textAlign: TextAlign.left,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '@',
                                  style: getRegularStyle(
                                      color: AwareboxColors.blackText),
                                ),
                                TextSpan(
                                  text: "ali",
                                  style: getRegularStyle(
                                      color: AwareboxColors.orangeText),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      //seller product rating

                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(right: AppPadding.p2),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: SmoothStarRating(
                                allowHalfRating: false,
                                starCount: 5,
                                rating: 4,
                                size: 20,
                                color: AwareboxColors.orangeBG,
                                borderColor: AwareboxColors.whiteBG,
                                spacing: 0.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: height(context) / 17,
                      color: AwareboxColors.hintBGLight,
                      width: width(context),
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: width(context),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: AppPadding.p2),
                                  child: Stack(
                                    children: [
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Text('SR',
                                                style: getRegularStyle(
                                                    color: AwareboxColors
                                                        .blackText)),
                                            const SizedBox(width: AppSize.s4),
                                            const Text(
                                              '170',
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned.fill(
                                        left: 0.0,
                                        right: 0.0,
                                        child: Divider(
                                            color: AwareboxColors.iconGrey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width(context),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: AppPadding.p3),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('SR',
                                            style: getRegularStyle(
                                                color:
                                                    AwareboxColors.blackText)),
                                        const SizedBox(width: AppSize.s10),
                                        Text("150",
                                            style: getRegularStyle(
                                                color:
                                                    AwareboxColors.blackText)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: AwareboxColors.orangeBG,
                      height: height(context) / 17,
                      width: width(context),
                      child: GestureDetector(
                        onTap: () async {},
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: AwareboxColors.whiteBG,
                          size: 20,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
