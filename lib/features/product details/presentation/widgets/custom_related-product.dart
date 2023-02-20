import 'package:awareboxui/core/utils/asset_icons.dart';
import 'package:awareboxui/core/utils/awarebox_colors.dart';
import 'package:awareboxui/core/utils/awarebox_textstyle.dart';
import 'package:awareboxui/core/utils/mediaquery.dart';
import 'package:awareboxui/core/utils/value_manager.dart';
import 'package:awareboxui/features/home/presentation/widgets/awarebox_image_loader.dart';
import 'package:awareboxui/features/home/presentation/widgets/awarebox_svg_loader.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import 'custom_text.dart';

class CustomRelatedProduct extends StatelessWidget {
  const CustomRelatedProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child:
      Stack(
        alignment: Alignment.center,
        children: [
         Card(
           clipBehavior: Clip.antiAlias,
           shape:  const RoundedRectangleBorder(
             borderRadius: BorderRadius.all(
               Radius.circular(AppSize.s14),
             ),
           ),
           child: Column(
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
                     // product image
                     Stack(
                       children: <Widget>[
                         //Product Image
                         SizedBox(
                           height: height(context)*0.2,
                           width: width(context)*0.35,
                           child: AppImageLoader.withImage(
                               imageUrl:
                               "https://cdn.photoworkout.com/images/ideas/product-photography-ideas/Natural%20Shadows.jpg",
                               imageType: ImageType.NETWORK,
                               showCircleImage: false,
                               boxFit: BoxFit.fill,
                               roundCorners: true),
                         ),

                         //Product views count
                         Positioned(
                             top: 2.00,
                             right: 2.00,
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
                                         svgSize: Size(5, 5),
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
                     Padding(
                         padding: const EdgeInsets.symmetric(
                             horizontal: AppPadding.p8,
                             vertical: AppPadding.p3),
                         child: Text("stand",
                             maxLines: 1,
                             textAlign: TextAlign.left,
                             style: getBoldStyle(
                                 color: AwareboxColors.blackText))),

                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left:10 ),
                 child: Row(
                   children: <Widget>[
                     //store icon
                     Row(
                       children: <Widget>[
                         const AwareboxSVGLoader(
                           urlImage: AssetIcons.store,
                           svgSize: Size(12, 12),
                         ),
                        // const SizedBox(width: AppPadding.p2),
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
                     GestureDetector(
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
                     const SizedBox(width: AppSize.s4),

                     Padding(
                       padding: const EdgeInsets.only(right: AppPadding.p1,left:AppPadding.p1 ),
                       child: FittedBox(
                               fit: BoxFit.scaleDown,
                                child: SmoothStarRating(
                                    allowHalfRating: false,
                                    starCount: 5,
                                    rating: 3,
                                    size: 15,
                                    color: AwareboxColors.orangeBG,
                                    borderColor: AwareboxColors.whiteBG,
                                    spacing: -5.0),
                              ),
                     ),

                     // //seller product rating
                   ],
                 ),
               ),
               const Spacer(),
               Row(
                 children: [
                   Container(
                     height: height(context)*0.08,
                     width: width(context)*0.2,
                     color: AwareboxColors.hintBGLight,
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
                   Container(
                     color: AwareboxColors.orangeBG,
                     height: height(context) *0.08,
                     width: width(context)*0.2,
                     child: GestureDetector(
                       onTap: () async {},
                       child: Icon(
                         Icons.add_shopping_cart,
                         color: AwareboxColors.whiteBG,
                         size: 20,
                       ),
                     ),
                   )
                 ],
               )

             ],
           ),
         ),
        ],
      ),
    );
  }
}
