import 'package:flutter/material.dart';

import 'core/utils/awarebox_theme.dart';
import 'core/utils/route_paths.dart';
import 'core/utils/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'awareBox',
      theme: lightTheme,
      initialRoute: RoutePaths.homeScreenView,
      onGenerateRoute: generateRoute,
    );
  }
}
