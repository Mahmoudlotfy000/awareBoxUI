import 'package:awareboxui/features/layout/presentation/cubit/layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/utils/awarebox_theme.dart';
import 'core/utils/route_paths.dart';
import 'core/utils/router.dart';
import 'features/home/presentation/bloc/home_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
       BlocProvider(
          create: (context) => LayoutCubit(),
        ),
       
      ],
     
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'awareBox',
        theme: lightTheme,
        initialRoute: RoutePaths.productDetailsView ,
        onGenerateRoute: generateRoute,
      ),
    );
  }
}
