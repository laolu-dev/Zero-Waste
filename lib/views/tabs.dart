import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:zero_waste/res/res.dart';

import 'home_screen/account/my_account.dart';
import 'home_screen/feed/feeds.dart';
import 'home_screen/home/home.dart';
import 'home_screen/products/products.dart';

final List<Widget> _screens = [
  const Home(),
  const FeedsPage(),
  const ProductScreen(),
  const MyAccount(),
];

final List<PersistentBottomNavBarItem> _navBarItems = [
  PersistentBottomNavBarItem(
      icon: const Icon(Icons.home_filled),
      title: 'Home',
      activeColorPrimary: Resources.color.primaryColor,
      inactiveColorPrimary: Resources.color.tField),
  PersistentBottomNavBarItem(
      icon: const Icon(Icons.bar_chart),
      title: 'Feeds',
      activeColorPrimary: Resources.color.primaryColor,
      inactiveColorPrimary: Resources.color.tField),
  PersistentBottomNavBarItem(
      icon: const Icon(Icons.paid_outlined),
      title: 'Products',
      activeColorPrimary: Resources.color.primaryColor,
      inactiveColorPrimary: Resources.color.tField),
  PersistentBottomNavBarItem(
      icon: const Icon(Icons.account_circle),
      title: 'Account',
      activeColorPrimary: Resources.color.primaryColor,
      inactiveColorPrimary: Resources.color.tField)
];

final PersistentTabController _controller =
    PersistentTabController(initialIndex: 0);

class AppPages extends StatefulWidget {
  static const id = '/PersistentBottomBar';
  const AppPages({Key? key}) : super(key: key);

  @override
  State<AppPages> createState() => _AppPagesState();
}

class _AppPagesState extends State<AppPages> {
  @override
  void initState() {
    _controller.index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _screens,
      controller: _controller,
      items: _navBarItems,
      navBarStyle: NavBarStyle.style6,
    );
  }
}
