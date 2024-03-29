import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:provider/provider.dart';

import 'package:zero_waste/core/constants/constants.dart';
import 'package:zero_waste/core/constants/styles/colors.dart';
import 'package:zero_waste/features/auth/presenation/blocs/auth_bloc/auth_bloc.dart';
import 'package:zero_waste/features/feed/presentation/controller/market_data.dart';
import 'package:zero_waste/features/home/presentation/widget/farmer_types.dart';
import 'package:zero_waste/features/home/presentation/widget/home_appbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loggedUser = BlocProvider.of<AuthenticationBloc>(context, listen: false).state as SuccessState;
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
                  DashboardBar(user: loggedUser.user!.username),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.hintText),
                      color: AppColors.white,
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
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                              Text(
                                'Grow crops and sell your wastes \n'
                                'produce to other farmers.',
                                style: GoogleFonts.jost(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                                softWrap: true,
                              ),
                              TextButton(
                                onPressed: () => pushNewScreen(context,
                                    screen: const UserCategories()),
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(87, 37),
                                  backgroundColor: AppColors.primary,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                child: Text(
                                  'Get Chats',
                                  style: GoogleFonts.jost(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: AppColors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        Image.asset(AppConstants.contactFarmer,
                            width: 100, height: 120),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Market View',
                    style: GoogleFonts.jost(
                        color: AppColors.black,
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
                  return null;

                  // return marketData.items.map((e) {
                  //   return MarketTile(
                  //     imageUrl: e?.imageUrl,
                  //     title: e?.cropType,
                  //     subTitle: e?.location,
                  //     weight: e?.weight,
                  //     date: e?.date,
                  //   );
                  // }).toList()[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
