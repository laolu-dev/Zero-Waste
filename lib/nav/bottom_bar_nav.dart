// import 'package:flutter/material.dart';
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
