import 'package:awareboxui/core/utils/awarebox_colors.dart';
import 'package:awareboxui/features/home/presentation/views/home_view.dart';
import 'package:awareboxui/features/layout/presentation/views/explore_view.dart';
import 'package:awareboxui/features/layout/presentation/views/inbox_view.dart';
import 'package:awareboxui/features/layout/presentation/views/notification_view.dart';
import 'package:awareboxui/features/layout/presentation/views/order_view.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta/meta.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  int currentIndex = 0;
  void changeNavIndex(int index) {
    currentIndex = index;
    emit(ChangeNavBarIndex());
  }

  List<BottomNavigationBarItem> navBarItems =  const[
  BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.bagShopping),
                  label: 'Shopping',
                
                 ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_rounded),
                  label: 'Explore',
                 ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined),
                  label: 'Order',
                 ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none),
                label: 'Notifications',
              
              ),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.comment),
                  label: 'Inbox',
                 ),
  ];

  List<Widget> screens = [
    const HomeView(),
    const ExploreView(),
    const OrderView(),
    const NotificationView(),
    const InboxView(),
  ];

}
