import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 50, 24, 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 46,
                  width: 367,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/guy.png',
                        scale: 0.25,
                        height: 44,
                        width: 44,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(3, 17, 33, 10),
                        child: Text(
                          'Welcome, Collen Morgan',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(33, 3, 3, 6),
                        child: Image.asset(
                          'assets/images/notify.png',
                          width: 44,
                          height: 44,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 29,
                ),
                Container(
                  height: 120,
                  width: 327,
                  color: const Color(0xff0A9D56),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(8, 23, 0, 0),
                            child: Text(
                              'How to use the app.',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(15, 12, 0, 0),
                            child: Text(
                              'Learn about all the features of the app.',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 99, 2),
                            child: Image.asset(
                              'assets/images/play.png',
                              width: 29,
                              height: 29,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 9, 0, 4),
                        child: Image.asset(
                          'assets/images/book.png',
                          width: 110,
                          height: 110,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 120,
                  width: 327,
                  color: const Color(0xffF5F5F5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(6, 9, 0, 0),
                            child: Text(
                              'Contract Farmer.',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(12, 4, 0, 0),
                            child: Text(
                              'Grow crops and sell your wastes',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const Text(
                            'produce to other farmers.',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 17, 17, 0),
                            child: Container(
                              height: 37,
                              width: 87,
                              decoration: BoxDecoration(
                                color: const Color(0xff0A9D56),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Center(
                                child: Text(
                                  'Get Chats',
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(54, 3, 0, 0),
                        child: Image.asset(
                          'assets/images/Texting.png',
                          width: 110,
                          height: 110,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Market View',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Color(0xff808080),
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    ListTile(
                      textColor: const Color(0xff000000),
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          'assets/images/grains.png',
                        ),
                      ),
                      title: const Text(
                        'Grains',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: const Text(
                        'Lagos, Nigeria',
                        style: TextStyle(
                          color: Color(0xff979797),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            '12/07/2022',
                            style: TextStyle(
                              color: Color(0xff979797),
                              //fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            '1Kg',
                            style: TextStyle(
                              color: Color(0xff0A9D56),
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ListTile(
                      textColor: const Color(0xff000000),
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          'assets/images/tuber.png',
                        ),
                      ),
                      title: const Text(
                        'Tuber Crops',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: const Text(
                        'Lagos, Nigeria',
                        style: TextStyle(
                          color: Color(0xff979797),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            '12/07/2022',
                            style: TextStyle(
                              color: Color(0xff979797),
                              //fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            '2Kg',
                            style: TextStyle(
                              color: Color(0xff0A9D56),
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ListTile(
                      textColor: const Color(0xff000000),
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          'assets/images/fruits.png',
                        ),
                      ),
                      title: const Text(
                        'Fruits',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: const Text(
                        'Lagos, Nigeria',
                        style: TextStyle(
                          color: Color(0xff979797),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            '12/07/2022',
                            style: TextStyle(
                              color: Color(0xff979797),
                              //fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            '1Kg',
                            style: TextStyle(
                              color: Color(0xff0A9D56),
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ListTile(
                      textColor: const Color(0xff000000),
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          'assets/images/roots.png',
                        ),
                      ),
                      title: const Text(
                        'Root crops',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: const Text(
                        'Lagos, Nigeria',
                        style: TextStyle(
                          color: Color(0xff979797),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            '12/07/2022',
                            style: TextStyle(
                              color: Color(0xff979797),
                              //fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            '2Kg',
                            style: TextStyle(
                              color: Color(0xff0A9D56),
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xff808080),
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
          selectedItemColor: const Color(0xff0A9D56),
          //onTap: _onItemTapped,
        ),
      ),
    );
  }
}
