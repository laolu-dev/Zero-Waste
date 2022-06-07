import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/home_nav.dart';

class AppBottomNavigationBar {
  BottomNavigationBar appBottomNavigationBar(
      Function(int)? onTap, int selectedIndex) {
    return BottomNavigationBar(
      unselectedLabelStyle: const TextStyle(color: Colors.grey),
      selectedLabelStyle: const TextStyle(color: Colors.green),
      unselectedItemColor: Colors.grey,
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/feed_icon.png',
              height: 22.5,
              width: 22.47,
              color: selectedIndex == 1 ? Colors.green : Colors.grey,
            ),
            label: 'Feed'),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/product_icon.png',
              height: 22.5,
              width: 22.47,
              color: selectedIndex == 2 ? Colors.green : Colors.grey,
            ),
            label: 'Home'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: 'Account'),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.green,
      onTap: onTap,
    );
  }
}

BottomNavigationBar homeBottomBar(int index, BuildContext context) {
  final navTo = Provider.of<HomeNav>(context);
  return BottomNavigationBar(
    unselectedItemColor: Colors.grey,
    type: BottomNavigationBarType.fixed,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/homei.png',
          color: navTo.index == 0 ? const Color(0xff0A9D56) : Colors.grey,
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/fed.png',
          color: navTo.index == 1 ? const Color(0xff0A9D56) : Colors.grey,
        ),
        label: 'Feeds',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/pi.png',
          color: navTo.index == 2 ? const Color(0xff0A9D56) : Colors.grey,
        ),
        label: 'Products',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/av.png',
          color: navTo.index == 3 ? const Color(0xff0A9D56) : Colors.grey,
        ),
        label: 'Account',
      ),
    ],
    currentIndex: navTo.index,
    selectedItemColor: const Color(0xff0A9D56),
    onTap: (index) {
      navTo.setIndex(index);
    },
  );
}
