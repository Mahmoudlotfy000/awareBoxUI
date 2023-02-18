import 'package:awareboxui/core/utils/awarebox_textstyle.dart';
import 'package:awareboxui/features/layout/presentation/cubit/layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return   BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocConsumer<LayoutCubit,LayoutState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = BlocProvider.of<LayoutCubit>(context);
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              items: cubit.navBarItems,
              currentIndex: cubit.currentIndex,
          
              onTap: (index) {
                cubit.changeNavIndex(index);
              },
            ),
            body: cubit.screens[cubit.currentIndex],
          );
        },
      ),
    );
  }
}