import 'package:awareboxui/core/utils/route_paths.dart';
import 'package:flutter/cupertino.dart';

import '../../features/home/presentation/views/home_view.dart';


Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.homeScreenView:
        return CupertinoPageRoute(
            builder: (_) => HomeView(),
            settings: const RouteSettings(name: RoutePaths.homeScreenView));
             default:
      return CupertinoPageRoute(builder: (context) => const HomeView());
    }
  }
