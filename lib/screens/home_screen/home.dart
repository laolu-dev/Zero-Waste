import 'package:flutter/material.dart';
import 'package:zero_waste/screens/home_screen/account_screen.dart';
import 'package:zero_waste/screens/product_screen.dart';
import '../feed_screen.dart';
import 'home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List _children = [
    const Home(),
    const FeedsPage(),
    const ProductScreen(),
    const MyAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/homei.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/fed.png'),
            label: 'Feeds',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/pi.png'),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/av.png'),
            label: 'Account',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xff0A9D56),
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
