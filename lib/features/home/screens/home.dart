import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:provider/provider.dart';

import '../../../shared/res.dart';
import '../../../widgets/list_views/market_view_builder.dart';
import '../../auth/auth_state/user_data.dart';
import 'farmer_types.dart';


class Home extends StatefulWidget {
  static const id = '/home';
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final loggedUser = Provider.of<UserAuth>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Resources.color.tField),
                  color: Resources.color.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
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
                          onPressed: () {
                            pushNewScreen(context,
                              screen: const UserCategories());
                          },
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
              const MarketViewBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
