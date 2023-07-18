import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import '../../../constants/constant.dart';

import '../../../shared/res.dart';
import '../../../widgets/app_bars/search_appbar.dart';

import 'connections.dart';

class UserCategories extends StatefulWidget {
  static const id = 'UserCategory';
  const UserCategories({Key? key}) : super(key: key);

  @override
  State<UserCategories> createState() => _UserCategoriesState();
}

class _UserCategoriesState extends State<UserCategories> {
  final TextEditingController _searchController = TextEditingController();

  Container userCate(String image, String headText, String subHead) {
    return Container(
      constraints: BoxConstraints(
          maxHeight: 148, maxWidth: MediaQuery.of(context).size.width),
      decoration: BoxDecoration(
          border: Border.all(color: primary),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image, height: 100, width: 100),
          const SizedBox(width: 8),
          SizedBox(
            width: 202,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(headText,
                    style: GoogleFonts.jost(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Resources.color.black),
                    softWrap: true),
                Text(subHead,
                    style: GoogleFonts.jost(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Resources.color.tField),
                    softWrap: true),
                TextButton(
                  onPressed: () =>
                      pushNewScreen(context, screen: const Connections()),
                  style: TextButton.styleFrom(
                      backgroundColor: primary,
                      minimumSize: const Size(99, 33),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    'Connect',
                    style: GoogleFonts.jost(
                        color: white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SearchBar(),
                const SizedBox(height: 15),
                userCate(
                  'assets/images/Farmer.png',
                  contentOne,
                  'Stay connected with us \nand get your produce',
                ),
                const SizedBox(height: 23),
                userCate(
                  'assets/images/Farmer-bro2.png',
                  'Black Soldier Fly \nFarmers',
                  'Connect with your farmers.',
                ),
                const SizedBox(height: 23),
                userCate(
                  'assets/images/Farmer-bro.png',
                  'Fish/Poultry \nFarmers',
                  'Stay Connected.',
                ),
                const SizedBox(height: 23),
                userCate(
                  'assets/images/Farmer4.png',
                  contentFour,
                  'Apply as a farm staff and \nworkers today.',
                ),
                const SizedBox(height: 23),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
