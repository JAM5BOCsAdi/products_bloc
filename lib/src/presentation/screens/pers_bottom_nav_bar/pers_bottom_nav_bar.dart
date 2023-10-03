import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:products_bloc/src/presentation/screens/products/products_screen.dart';

import '../feed/feed_screen.dart';
import '../profile/profile_screen.dart';
import 'customPers_bottom_nav_bar.dart';

class PersBottomNavBar extends StatefulWidget {
  const PersBottomNavBar({super.key});

  @override
  State<PersBottomNavBar> createState() => _PersBottomNavBarState();
}

class _PersBottomNavBarState extends State<PersBottomNavBar> {
  late PersistentTabController _controller;
  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> _buildScreens() {
    return [
      const FeedScreen(),
      const ProductsScreen(),
      const ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: ("Feed"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.shopping_bag),
        title: ("Products"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: ("Profile"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView.custom(
      context,
      controller: _controller,
      itemCount: _navBarsItems().length,
      screens: _buildScreens(),
      confineInSafeArea: true,
      handleAndroidBackButtonPress: true,
      hideNavigationBarWhenKeyboardShows: true,
      stateManagement: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      onWillPop: (p0) async {
        return true;
      },
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      customWidget: CustomPersistentBottomNavBar(
        items: _navBarsItems(),
        selectedIndex: _controller.index,
        onItemSelected: (index) {
          setState(() {
            _controller.index = index;
          });
        },
      ),
    );
  }
}
