import 'package:awareboxui/core/utils/strings.dart';

import '../../../../core/utils/asset_icons.dart';

class CategoryModel {
  final String title;
  final String image;

  CategoryModel({required this.title, required this.image});
}

List<CategoryModel> categoriesData = [
  CategoryModel(
    title: Strings.categoryAll,
    image: AssetIcons.all,
  ),
    CategoryModel(
    title: Strings.categoryHome,
    image: AssetIcons.homeIcon,
  ),
      CategoryModel(
    title: Strings.categoryJewellery,
    image: AssetIcons.jewelleryIcon,
  ),
      CategoryModel(
    title: Strings.categoryBags,
    image: AssetIcons.bagIcon,
  ),
      CategoryModel(
    title: Strings.categoriesOutdoors,
    image: AssetIcons.outdoorIcon,
  ),
      CategoryModel(
    title: Strings.categoriesArt,
    image: AssetIcons.artIcon,
  ),
      CategoryModel(
    title: Strings.categoriesCamping,
    image: AssetIcons.outdoorIcon,
  ),
      CategoryModel(
    title: Strings.categoriesPerfumes,
    image: AssetIcons.perfume,
  ),
];
