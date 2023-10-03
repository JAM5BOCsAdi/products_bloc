import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:products_bloc/src/presentation/screens/feed/feed_screen.dart';
import 'package:products_bloc/src/presentation/screens/products/products_screen.dart';
import 'package:products_bloc/src/presentation/screens/profile/profile_screen.dart';

class PersBottomNavBar extends StatelessWidget {
  const PersBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        const FeedScreen(),
        const ProductsScreen(),
        const ProfileScreen(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          title: ("Feed"),
          // activeColorPrimary: navBarIconColor,
          // inactiveColorPrimary: navBarIconColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.shopping_bag),
          title: ("Products"),
          // activeColorPrimary: navBarIconColor,
          // inactiveColorPrimary: navBarIconColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          title: ("Profile"),
          // activeColorPrimary: navBarIconColor,
          // inactiveColorPrimary: navBarIconColor,
        ),
      ];
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your App'),
      ),
      body: PersistentTabView(
        context,
        controller: _controller, // Connect to your BLoC's controller
        screens: _buildScreens(),
        items: _navBarItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
