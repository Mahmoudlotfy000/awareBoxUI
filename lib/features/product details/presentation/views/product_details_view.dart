import 'package:awareboxui/core/utils/asset_icons.dart';
import 'package:awareboxui/core/utils/awarebox_colors.dart';
import 'package:awareboxui/core/utils/awarebox_textstyle.dart';
import 'package:awareboxui/core/utils/mediaquery.dart';
import 'package:awareboxui/features/home/presentation/widgets/awarebox_svg_loader.dart';
import 'package:flutter/material.dart';
import '../../../home/presentation/widgets/awarebox_image_loader.dart';
import '../widgets/custom-product-appbar.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_related-product.dart';
import '../widgets/custom_text.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  int count = 1;
  String selectedValue = "كبير";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: height(context) * 0.5,
                        width: width(context),
                        // decoration: const BoxDecoration(
                        //   image: DecorationImage(
                        //       image: AssetImage('assets/images/stand.png'),
                        //       fit: BoxFit.fill),
                        // ),
                        child: AppImageLoader.withImage(
                            imageUrl:
                                "https://cdn.photoworkout.com/images/ideas/product-photography-ideas/Natural%20Shadows.jpg",
                            imageType: ImageType.NETWORK,
                            showCircleImage: false,
                            boxFit: BoxFit.fill,
                            roundCorners: true),
                      ),
                      Positioned(
                        bottom: 00.00,
                        right: 18.00,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            RawMaterialButton(
                              onPressed: () {},
                              fillColor: Colors.white,
                              elevation: 1,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(7),
                              )),
                              constraints:
                                  BoxConstraints.tight(const Size(40, 20)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    color: AwareboxColors.whiteBG,
                                    child: const AwareboxSVGLoader(
                                      urlImage: AssetIcons.eye,
                                      svgSize: Size(6, 6),
                                    ),
                                  ),
                                  Text(' 53',
                                      style: getRegularStyle(
                                          color: AwareboxColors.blackText)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: customText(
                              text: 'stand',
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: height(context) * 0.02,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.home_filled,
                              size: 13,
                            ),
                            customText(text: 'Seller :', fontSize: 13),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: '@',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontFamily: 'Montserrat'),
                                  ),
                                  TextSpan(
                                      text: 'sa3f_sa',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.amber,
                                          fontFamily: 'Montserrat')),
                                ],
                              ),
                            ),
                            const Spacer(),
                            customText(
                              text: '37.93 off',
                              fontSize: 10,
                              color: Colors.green,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height(context) * 0.01,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: customText(
                            text: 'SR 200.0',
                            fontSize: 15,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Row(
                          children: [
                            customText(
                              text: '10 item left',
                              fontSize: 12,
                            ),
                            const Spacer(),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'SR',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.amber),
                                  ),
                                  TextSpan(
                                      text: '145.0',
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.black)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        customDivider(top: 25, bottom: 25),
                        Row(
                          children: [
                            customText(
                              text: 'Quantity',
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                            SizedBox(
                              width: width(context) * 0.12,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  if (count >= 1) {
                                    count--;
                                  }
                                });
                              },
                              fillColor: Colors.white,
                              elevation: 2.0,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(7),
                              )),
                              constraints:
                                  BoxConstraints.tight(const Size(40, 40)),
                              child: const Icon(Icons.remove),
                            ),
                            SizedBox(
                              width: width(context) * 0.03,
                            ),
                            customText(
                              text: '$count',
                              fontSize: 16,
                            ),
                            SizedBox(width: width(context) * 0.03),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  count++;
                                });
                              },
                              fillColor: Colors.white,
                              elevation: 2.0,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(7),
                              )),
                              constraints:
                                  BoxConstraints.tight(const Size(40, 40)),
                              child: const Icon(Icons.add),
                            ),
                            const Spacer(),
                          ],
                        ),
                        SizedBox(
                          height: height(context) * 0.04,
                        ),
                        Row(
                          children: [
                            customText(
                              text: 'Available\n colors',
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                            SizedBox(
                              width: width(context) * 0.1,
                            ),
                            RawMaterialButton(
                              onPressed: () {},
                              fillColor: AwareboxColors.orangeBG,
                              elevation: 1.0,
                              shape: const CircleBorder(),
                              constraints:
                                  BoxConstraints.tight(const Size(40, 40)),
                              child: const Icon(
                                Icons.check,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height(context) * 0.04,
                        ),
                        Row(
                          children: [
                            customText(
                              text: 'Size',
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                            SizedBox(
                              width: width(context) * 0.21,
                            ),
                            Container(
                              height: 50,
                              width: 210,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: Container(),
                                value: selectedValue,
                                style: TextStyle(
                                  color: AwareboxColors.blackText,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedValue = newValue!;
                                  });
                                },
                                items: [
                                  DropdownMenuItem(
                                    value: 'كبير',
                                    child: Text(
                                      'كبير',
                                      selectionColor: AwareboxColors.orangeBG,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height(context) * 0.04,
                        ),
                        RawMaterialButton(
                          onPressed: () {},
                          fillColor: AwareboxColors.orangeBG,
                          elevation: 1.0,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          )),
                          constraints:
                              BoxConstraints.tight(const Size(350, 50)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.add_shopping_cart,
                                color: Colors.white,
                                size: 30,
                              ),
                              customText(
                                  text: 'Add to cart',
                                  fontSize: 16,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height(context) * 0.04,
                        ),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customText(
                                      text: 'Fast Shipping',
                                      color: AwareboxColors.orangeBG,
                                      fontSize: 12),
                                  customText(
                                      text: 'Expected Delivery  3-5 days',
                                      color: Colors.black,
                                      fontSize: 12),
                                ],
                              ),
                              VerticalDivider(
                                color: Colors.grey,
                                width: width(context) * 0.1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customText(
                                      text: 'Fast Shipping',
                                      color: Colors.black,
                                      fontSize: 14),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.local_shipping_outlined,
                                        color: AwareboxColors.orangeBG,
                                        size: 25,
                                      ),
                                      customText(
                                          text: 'Not Available',
                                          color: AwareboxColors.orangeBG,
                                          fontSize: 14),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        customDivider(top: 20, bottom: 20),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customText(
                                text: 'Additional description',
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(
                                height: height(context) * 0.01,
                              ),
                              customText(
                                text: 'Hand made',
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ],
                          ),
                        ),
                        customDivider(top: 20, bottom: 20),
                        Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Product Id :',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Montserrat'),
                                ),
                                TextSpan(
                                    text: 'aware439',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontFamily: 'Montserrat')),
                              ],
                            ),
                          ),
                        ),
                        customDivider(top: 20, bottom: 20),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customText(
                                text: 'Features',
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(
                                height: height(context) * 0.01,
                              ),
                              customText(
                                text: 'Gender : الكل',
                                color: Colors.black,
                                fontSize: 13,
                              ),
                              customText(
                                text: 'HandMade : نعم',
                                color: Colors.black,
                                fontSize: 13,
                              ),
                              customText(
                                text: 'Style : سعودي',
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ],
                          ),
                        ),
                        customDivider(top: 20, bottom: 20),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customText(
                                text: 'Related Products',
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(
                                height: height(context) * 0.03,
                              ),
                              SizedBox(
                                  height: height(context) * 0.36,
                                  child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      physics: const BouncingScrollPhysics(),
                                      itemBuilder: (context, index) =>
                                          const CustomRelatedProduct(),
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                              width: width(context) * 0.03),
                                      itemCount: 3)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // app bar
            const ProductAppBar(),
          ],
        ),
      ),
    );
  }
}
