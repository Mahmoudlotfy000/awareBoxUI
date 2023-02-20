import 'package:awareboxui/core/utils/awarebox_textstyle.dart';
import 'package:awareboxui/core/utils/mediaquery.dart';
import 'package:awareboxui/core/utils/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/awarebox_colors.dart';
import '../../data/models/categpries_model.dart';

import '../bloc/home_bloc.dart';
import 'awarebox_svg_loader.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Container(
          color: AwareboxColors.lightGreyHome,
          height:150,
          child: ListView.builder(
            padding: const EdgeInsets.all(
              AppPadding.p12,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: categoriesData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  BlocProvider.of<HomeBloc>(context).add(SelectCategory(index));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppPadding.p1),
                  child: SizedBox(
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        //category image
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p5),
                          child: Container(
                            width: width(context) / 5,
                            height: height(context) / 10,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: BlocProvider.of<HomeBloc>(context)
                                              .currentIndex ==
                                          index
                                      ? AwareboxColors.orangeBG
                                      : AwareboxColors.whiteBG),
                              boxShadow: [
                                BoxShadow(
                                  color: AwareboxColors.hintLightGrey,
                                  spreadRadius: 0.0,
                                  blurRadius: 2,
                                  offset: const Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                              color: AwareboxColors.whiteBG,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(AppPadding.p20),
                              child: AwareboxSVGLoader(
                                svgSize: const Size(20, 20),
                                urlImage: categoriesData[index].image,
                              ),
                            ),
                          ),
                        ),
                        //category title
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: AppPadding.p8),
                            child: Text(categoriesData[index].title,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                textScaleFactor: 0.9,
                                style: getRegularStyle(
                                    color: BlocProvider.of<HomeBloc>(context)
                                                .currentIndex ==
                                            index
                                        ? AwareboxColors.orangeBG
                                        : AwareboxColors.appTitle)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
