import 'package:awareboxui/core/utils/route_paths.dart';
import 'package:awareboxui/features/layout/presentation/views/layout.dart';
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
             default:
      return CupertinoPageRoute(builder: (context) => const HomeView());
    }
  }
