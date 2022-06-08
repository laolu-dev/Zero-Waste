import 'package:flutter/material.dart';
import 'package:zero_waste/constants/main_nav_screens.dart';
import 'package:zero_waste/screens/home_screen/account/account_screen.dart';
import 'package:zero_waste/screens/home_screen/feed/feed_screen.dart';
import 'package:zero_waste/screens/home_screen/home.dart';
import 'package:zero_waste/screens/home_screen/products/product_screen.dart';

// import 'package:zero_waste/screens/home_screen/feed_screen.dart';
// import 'package:zero_waste/screens/home_screen/home_screen.dart';
//
// class TabNavigatorRoutes {
//   static const String root = '/';
//   static const String feed = '/Feeds';
// }
//
// class TabNavigator extends StatelessWidget {
//   TabNavigator({required this.navigatorKey, required this.currentIndex});
//
//   final GlobalKey<NavigatorState> navigatorKey;
//   final int currentIndex;
//
//
//   void _push(BuildContext context, String route) {
//     var routeBuilders = _routeBuilders(context, routePage);
//    Navigator.pushNamed(context, route);
//   }
//
//   Map<String, WidgetBuilder> _routeBuilders(BuildContext context, String routePage) {
//     return {
//       TabNavigatorRoutes.root: (context) => Home(),
//       TabNavigatorRoutes.feed: (context) => FeedsPage(),
//     };
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var routeBuilders = _routeBuilders(context);
//
//     return Navigator(
//       key: navigatorKey,
//       initialRoute: TabNavigatorRoutes.root,
//       onGenerateRoute: (routeSettings) {
//         return MaterialPageRoute(
//             builder: (context) => routeBuilders!![TabNavigatorRoutes.feed, context](context));
//       },
//     );
//   }
// }
class BottomBarNavigator extends StatefulWidget {
  final int cIndex;
  const BottomBarNavigator({Key? key, required this.cIndex}) : super(key: key);

  @override
  State<BottomBarNavigator> createState() => _BottomBarNavigatorState();
}

class _BottomBarNavigatorState extends State<BottomBarNavigator> {
  int _currentIndex = 0;
  List<String> nav = [
    HomeScreen.id,
    FeedsPage.id,
    ProductScreen.id,
    MyAccount.id
  ];

  // int get currentIndex => _currentIndex = currentIndex;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/homei.png',
            color: _currentIndex == 0 ? const Color(0xff0A9D56) : Colors.grey,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/fed.png',
            color: _currentIndex == 1 ? const Color(0xff0A9D56) : Colors.grey,
          ),
          label: 'Feeds',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/pi.png',
            color: _currentIndex == 2 ? const Color(0xff0A9D56) : Colors.grey,
          ),
          label: 'Products',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/av.png',
            color: _currentIndex == 3 ? const Color(0xff0A9D56) : Colors.grey,
          ),
          label: 'Account',
        ),
      ],
      currentIndex: widget.cIndex == 0 ? _currentIndex : widget.cIndex,
      selectedItemColor: const Color(0xff0A9D56),
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
        Navigator.pushNamed(context, nav[_currentIndex]);
      },
    );
  }
}
