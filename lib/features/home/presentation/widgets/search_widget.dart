import 'package:awareboxui/core/utils/awarebox_textstyle.dart';
import 'package:awareboxui/core/utils/value_manager.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/awarebox_colors.dart';

class HomeSearchWidget extends StatefulWidget {
  const HomeSearchWidget({super.key});

  @override
  State<HomeSearchWidget> createState() => _HomeSearchWidgetState();
}

String dropdownvalue = 'Product';
// List of items in our dropdown menu
var items = [
  'Product',
  'User',
];

class _HomeSearchWidgetState extends State<HomeSearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
      child: SizedBox(
        height: 40,
        child: Container(
          decoration: BoxDecoration(
              color: AwareboxColors.greyHomeScreen,
              borderRadius: BorderRadius.circular(AppSize.s10)),
          child: Row(children: [
            Expanded(
                flex: 2,
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: AppMargin.m12, right: AppMargin.m12),
                    child: Container(
                      //added this to handle search click on full widget
                      color: Colors.transparent,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(
                              AppPadding.p12,
                            ),
                            child: Icon(
                              Icons.search,
                              size: 20,
                              color: AwareboxColors.hintLightGrey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: AppPadding.p12,
                              right: AppPadding.p12,
                            ),
                            child: Text(
                              "Search",
                              style: getRegularStyle(
                                  color: AwareboxColors.blackText),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            Container(color: AwareboxColors.whiteBG, width: 6),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: AppSize.s12),
                child: Material(
                  color: AwareboxColors.greyHomeScreen,
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: DropdownButton(
                        isDense: true,
                        items: items.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Container(
                              color: Colors.white,
                              child: Material(
                                child: Text(item,
                                    style: 
                                         getRegularStyle(
                                            color: AwareboxColors.blackText)
                                       ),
                              ),
                            ),
                          );
                        }).toList(),
                        value: dropdownvalue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                        hint: Text(
                            dropdownvalue == "Product"
                                ? "Product"
                                : dropdownvalue,
                            style: getRegularStyle(
                                color: AwareboxColors.blackText)),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
