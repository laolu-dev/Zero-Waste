import 'package:flutter/material.dart';

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
