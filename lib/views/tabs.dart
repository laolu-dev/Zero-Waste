import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../shared/res.dart';
import 'home_screen/account/my_account.dart';
import 'home_screen/feed/feeds.dart';
import 'home_screen/home/home.dart';
import 'home_screen/products/products.dart';

class AppPages extends StatefulWidget {
  static const id = '/main_page_with_nav_bar';
  const AppPages({Key? key}) : super(key: key);

  @override
  State<AppPages> createState() => _AppPagesState();
}

class _AppPagesState extends State<AppPages> {
  late PersistentTabController _controller;

  List<Widget> _navScreens() {
    return [
      const Home(),
      const FeedsPage(),
      const ProductScreen(),
      const MyAccount(),
    ];
  }

  List<PersistentBottomNavBarItem> _navItems() {
    return [
      PersistentBottomNavBarItem(
          icon: Image.asset(Resources.iString.home,
              color: _controller.index == 0 ? Resources.color.primary : null),
          title: 'Home',
          activeColorPrimary: Resources.color.primary),
      PersistentBottomNavBarItem(
          icon: Image.asset(Resources.iString.feed,
              color: _controller.index == 1 ? Resources.color.primary : null),
          title: 'Feeds',
          activeColorPrimary: Resources.color.primary),
      PersistentBottomNavBarItem(
          icon: Image.asset(Resources.iString.product,
              color: _controller.index == 2 ? Resources.color.primary : null),
          title: 'Products',
          activeColorPrimary: Resources.color.primary),
      PersistentBottomNavBarItem(
          icon: Image.asset(Resources.iString.account,
              color: _controller.index == 3 ? Resources.color.primary : null),
          title: 'Account',
          activeColorPrimary: Resources.color.primary)
    ];
  }

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _navScreens(),
      items: _navItems(),
      onItemSelected: (value) {
        setState(() => _controller.index = value);
      },
      navBarStyle: NavBarStyle.style6,
    );
  }
}
