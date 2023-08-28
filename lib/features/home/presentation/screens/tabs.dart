import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/constants/styles/colors.dart';
import '../../../account/presentation/screens/my_account.dart';
import '../../../feed/presentation/screens/feeds.dart';
import '../../../products/presentation/screens/products.dart';
import 'dashboard.dart';

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
      const Dashboard(),
      const FeedsPage(),
      const ProductScreen(),
      const MyAccount(),
    ];
  }

  List<PersistentBottomNavBarItem> _navItems() {
    return [
      PersistentBottomNavBarItem(
          icon: Image.asset(
            AppConstants.home,
            color: _controller.index == 0 ? AppColors.primary : null,
          ),
          title: 'Home',
          activeColorPrimary: AppColors.primary),
      PersistentBottomNavBarItem(
          icon: Image.asset(
            AppConstants.feed,
            color: _controller.index == 1 ? AppColors.primary : null,
          ),
          title: 'Feeds',
          activeColorPrimary: AppColors.primary),
      PersistentBottomNavBarItem(
          icon: Image.asset(
            AppConstants.product,
            color: _controller.index == 2 ? AppColors.primary : null,
          ),
          title: 'Products',
          activeColorPrimary: AppColors.primary),
      PersistentBottomNavBarItem(
          icon: Image.asset(
            AppConstants.account,
            color: _controller.index == 3 ? AppColors.primary : null,
          ),
          title: 'Account',
          activeColorPrimary: AppColors.primary)
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
      navBarStyle: NavBarStyle.style1,
    );
  }
}
