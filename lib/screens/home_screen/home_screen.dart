import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/models/user.dart';
import '../../models/market_items.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<MarketItems> _items = [
    MarketItems(
        cropType: 'Grains',
        weight: '1Kg',
        location: 'Lagos, Nigeria',
        date: '17/22/2003'),
    MarketItems(
        cropType: 'Grains',
        weight: '1Kg',
        location: 'Lagos, Nigeria',
        date: '17/22/2003'),
  ];

  User userProfile = User();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
        child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              //Show User display picture
              child:
                  Image.asset('assets/images/guy.png', height: 38, width: 38),
              onTap: () => Navigator.pushNamed(context, '/ProfileAccount'),
            ),
            title: Text('Welcome, ${userProfile.name}', style: headerText),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 29),
                  Container(
                    constraints:
                        const BoxConstraints(maxWidth: 327, maxHeight: 120),
                    color: primaryColor,
                    //First Container
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'How to use the app.',
                              style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Learn about all the features of the app.',
                              style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                'assets/images/play.png',
                                height: 29,
                                width: 29,
                              ),
                            )
                          ],
                        ),
                        Image.asset(
                          'assets/images/book.png',
                          width: 90,
                          height: 90,
                        ),
                      ],
                    ),
                  ),
                  //Second Container
                  const SizedBox(height: 24),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: hintTextColor), color: white),
                    constraints:
                        const BoxConstraints(maxHeight: 148, maxWidth: 327),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'Contract Farmer.',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            const Text(
                              'Grow crops and sell your wastes \nproduce to other farmers.',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                              softWrap: true,
                            ),
                            TextButton(
                              onPressed: () =>
                                  Navigator.pushNamed(context, '/Types'),
                              style: TextButton.styleFrom(
                                  minimumSize: const Size(87, 37),
                                  backgroundColor: primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: Text(
                                'Get Chats',
                                style:
                                    buttonTextStyleTwo.copyWith(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 10),
                        Image.asset(
                          'assets/images/Texting.png',
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  //List of available markets
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: ListView.builder(
                      itemCount: _items.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(_items[index].cropType),
                          subtitle: Text(_items[index].location),
                          trailing: Column(
                            children: [
                              Text(_items[index].date),
                              Text(_items[index].weight)
                            ],
                          ),
                          leading: const Icon(Icons.account_box),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
