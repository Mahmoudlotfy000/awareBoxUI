import 'package:awareboxui/core/utils/route_paths.dart';
import 'package:awareboxui/features/layout/presentation/views/layout.dart';
import 'package:awareboxui/features/product%20details/presentation/views/product_details_view.dart';
import 'package:flutter/cupertino.dart';

import '../../features/home/presentation/views/home_view.dart';


Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.homeScreenView:
        return CupertinoPageRoute(
            builder: (_) => const HomeView(),
            settings: const RouteSettings(name: RoutePaths.homeScreenView));
            case RoutePaths.layout:
        return CupertinoPageRoute(
            builder: (_) => const Layout(),
            settings: const RouteSettings(name: RoutePaths.layout));
      case RoutePaths.productDetailsView:
        return CupertinoPageRoute(
            builder: (_) => const ProductDetailsView(),
            settings: const RouteSettings(name: RoutePaths.productDetailsView));
             default:
      return CupertinoPageRoute(builder: (context) => const HomeView());
    }
  }
