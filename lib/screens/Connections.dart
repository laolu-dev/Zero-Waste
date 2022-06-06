import 'package:flutter/material.dart';
import 'package:zero_waste/screens/Home.dart';
import 'package:zero_waste/screens/Types_of_farmers.dart';

class Connections extends StatelessWidget {
  const Connections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(14, 15, 4, 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 46,
                  width: 367,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios_outlined,
                            color: Colors.black87, size: 20),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Types()),
                          );
                        },
                      ),
                      Container(
                        height: 46,
                        width: 251,
                        decoration: BoxDecoration(
                          color: Color(0xffE3FFF7),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search_sharp,
                              size: 20,
                              color: Color(0xff808080),
                            ),
                            Text(
                              'Search For Farmers',
                              style: TextStyle(
                                color: Color(0xff808080),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/notify.png',
                        width: 44,
                        height: 44,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.5),
                ListTile(
                  textColor: Color(0xff000000),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/john.png',
                    ),
                  ),
                  title: Text(
                    'John Doe',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    'Black Soldier Fly Farmer                Lagos, Nigeria.',
                    style: TextStyle(
                      color: Color(0xff263238),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  isThreeLine: true,
                  trailing: Container(
                    height: 39,
                    width: 99,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Connections()),
                          );
                        },
                        child: Text(
                          'Chats',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff0A9D56),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                ListTile(
                  textColor: Color(0xff000000),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/john.png',
                    ),
                  ),
                  title: Text(
                    'John Doe',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    'Black Soldier Fly Farmer                Lagos, Nigeria.',
                    style: TextStyle(
                      color: Color(0xff263238),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  isThreeLine: true,
                  trailing: Container(
                    height: 39,
                    width: 99,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Connections()),
                          );
                        },
                        child: Text(
                          'Chats',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff0A9D56),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                ListTile(
                  textColor: Color(0xff000000),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/john.png',
                    ),
                  ),
                  title: Text(
                    'John Doe',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    'Black Soldier Fly Farmer                Lagos, Nigeria.',
                    style: TextStyle(
                      color: Color(0xff263238),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  isThreeLine: true,
                  trailing: Container(
                    height: 39,
                    width: 99,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Connections()),
                          );
                        },
                        child: Text(
                          'Chats',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff0A9D56),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                ListTile(
                  textColor: Color(0xff000000),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/john.png',
                    ),
                  ),
                  title: Text(
                    'John Doe',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    'Black Soldier Fly Farmer                Lagos, Nigeria.',
                    style: TextStyle(
                      color: Color(0xff263238),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  isThreeLine: true,
                  trailing: Container(
                    height: 39,
                    width: 99,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Connections()),
                          );
                        },
                        child: Text(
                          'Chats',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff0A9D56),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                ListTile(
                  textColor: Color(0xff000000),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/john.png',
                    ),
                  ),
                  title: Text(
                    'John Doe',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    'Black Soldier Fly Farmer                Lagos, Nigeria.',
                    style: TextStyle(
                      color: Color(0xff263238),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  isThreeLine: true,
                  trailing: Container(
                    height: 39,
                    width: 99,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Connections()),
                          );
                        },
                        child: Text(
                          'Chats',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff0A9D56),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                ListTile(
                  textColor: Color(0xff000000),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/john.png',
                    ),
                  ),
                  title: Text(
                    'John Doe',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    'Black Soldier Fly Farmer                Lagos, Nigeria.',
                    style: TextStyle(
                      color: Color(0xff263238),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  isThreeLine: true,
                  trailing: Container(
                    height: 39,
                    width: 99,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Connections()),
                          );
                        },
                        child: Text(
                          'Chats',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff0A9D56),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                ListTile(
                  textColor: Color(0xff000000),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/john.png',
                    ),
                  ),
                  title: Text(
                    'John Doe',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    'Black Soldier Fly Farmer                Lagos, Nigeria.',
                    style: TextStyle(
                      color: Color(0xff263238),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  isThreeLine: true,
                  trailing: Container(
                    height: 39,
                    width: 99,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Connections()),
                          );
                        },
                        child: Text(
                          'Chats',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff0A9D56),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(0xff808080),
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
          currentIndex: 0,
          selectedItemColor: Color(0xff0A9D56),
          //onTap: _onItemTapped,
        ),
      ),
    );
  }
}
