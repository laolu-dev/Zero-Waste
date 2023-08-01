import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:provider/provider.dart';
import '../../../utils/config/res.dart';
import '../../../provider/market_data.dart';
import '../../../provider/authenticate.dart';
import '../widget/home_appbar.dart';
import '../widget/market_tile.dart';
import '../widget/farmer_types.dart';

class Dashboard extends StatelessWidget {
  static const id = '/home';
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loggedUser = Provider.of<UserAuth>(context, listen: false);
    var marketData = context.watch<MarketData>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DashboardBar(user: '${loggedUser.user?.username}'),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Resources.color.hintText),
                      color: Resources.color.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contract Farmer.',
                                style: GoogleFonts.jost(
                                    color: Resources.color.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                              Text(
                                'Grow crops and sell your wastes \n'
                                'produce to other farmers.',
                                style: GoogleFonts.jost(
                                    color: Resources.color.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                                softWrap: true,
                              ),
                              TextButton(
                                onPressed: () => pushNewScreen(context,
                                    screen: const UserCategories()),
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(87, 37),
                                  backgroundColor: Resources.color.primary,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                child: Text(
                                  'Get Chats',
                                  style: GoogleFonts.jost(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Resources.color.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        Image.asset(Resources.iString.contactFarmer,
                            width: 100, height: 120),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Market View',
                    style: GoogleFonts.jost(
                        color: Resources.color.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: marketData.length,
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return marketData.items.map((e) {
                    return MarketTile(
                      imageUrl: e.imageUrl,
                      title: e.cropType,
                      subTitle: e.location,
                      weight: e.weight,
                      date: e.date,
                    );
                  }).toList()[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
