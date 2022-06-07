import 'package:flutter/material.dart';
import 'package:zero_waste/screens/home_screen/home/Connections.dart';
import 'home_screen.dart';

class Types extends StatelessWidget {
  const Types({Key? key}) : super(key: key);

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
                SizedBox(
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
                                builder: (context) => const Home()),
                          );
                        },
                      ),
                      Container(
                        height: 46,
                        width: 251,
                        decoration: BoxDecoration(
                          color: const Color(0xffE3FFF7),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: const [
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
                const SizedBox(height: 27),
                Center(
                  child: Container(
                    height: 149,
                    width: 327,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff0A9D56),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/Farmer.png',
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Crop Farmers',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              const Text(
                                'Stay connected with us',
                                style: TextStyle(
                                  color: Color(0xff222323),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              const Text(
                                'and get your produce.',
                                style: TextStyle(
                                  color: Color(0xff222323),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 16, 85, 7),
                                child: Container(
                                  height: 33,
                                  width: 99,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff0A9D56),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Connections()),
                                        );
                                      },
                                      child: const Text(
                                        'Connect',
                                        style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 27),
                Center(
                  child: Container(
                    height: 149,
                    width: 327,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff0A9D56),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/barrow.png',
                          // width: 10,
                          // height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Black Soldier Fly',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              const Text(
                                'Farmers',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              const Text(
                                'Connect with your farmers.',
                                style: TextStyle(
                                  color: Color(0xff222323),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 16, 85, 7),
                                child: Container(
                                  height: 33,
                                  width: 99,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff0A9D56),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Connections()),
                                        );
                                      },
                                      child: const Text(
                                        'Connect',
                                        style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 27),
                Center(
                  child: Container(
                    height: 149,
                    width: 327,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff0A9D56),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/Farmer3.png',
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Fish / Poultry',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              const Text(
                                'Farmers',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              const Text(
                                'Stay connected.',
                                style: TextStyle(
                                  color: Color(0xff222323),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 16, 85, 7),
                                child: Container(
                                  height: 33,
                                  width: 99,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff0A9D56),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Connections()),
                                        );
                                      },
                                      child: const Text(
                                        'Connect',
                                        style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 27),
                Center(
                  child: Container(
                    height: 149,
                    width: 327,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff0A9D56),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/Farmer4.png',
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Mannual Labourers',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              const Text(
                                'Apply as a farm staff and',
                                style: TextStyle(
                                  color: Color(0xff222323),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              const Text(
                                'worker today.',
                                style: TextStyle(
                                  color: Color(0xff222323),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 16, 85, 7),
                                child: Container(
                                  height: 33,
                                  width: 99,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff0A9D56),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Connections()),
                                        );
                                      },
                                      child: const Text(
                                        'Connect',
                                        style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
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
