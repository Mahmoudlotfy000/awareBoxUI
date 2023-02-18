import 'package:awareboxui/core/utils/value_manager.dart';
import 'package:awareboxui/features/home/presentation/widgets/custom_appbar.dart';
import 'package:awareboxui/features/home/presentation/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/advertisement_widget.dart';
import '../widgets/categories.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController? controller;
    return Scaffold(
        body: SafeArea(
          child: Column(
              children: [
          const HomeAppBar(),
          Expanded(
            child: CustomScrollView(
              controller: controller,
              shrinkWrap: true,
              slivers: <Widget>[
                //product categories
                const SliverToBoxAdapter(child: HomeCategories()),
                const SliverToBoxAdapter(child: AdvertismntWidget()),
                SliverPadding(
                  padding: const EdgeInsets.only(
                      left: AppPadding.p12,
                      right: AppPadding.p12,
                      bottom: AppPadding.p12),
                  sliver: SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.5,
                      crossAxisSpacing: AppSize.s12,
                      mainAxisSpacing: AppSize.s10,
                      crossAxisCount: 2,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return const ProductWidget();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
              ],
            ),
        ));
  }
}
