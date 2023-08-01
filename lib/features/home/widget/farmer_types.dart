import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';


import '../../../utils/config/res.dart';

import '../screens/connections.dart';

class UserCategories extends StatelessWidget {
  static const id = 'UserCategory';
  const UserCategories({Key? key}) : super(key: key);

  Widget userCategory(
      BuildContext context, String image, String headText, String subHead) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Resources.color.primary),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(image, height: 100, width: 100),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headText,
                  style: GoogleFonts.jost(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Resources.color.black),
                ),
                Text(
                  subHead,
                  style: GoogleFonts.jost(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Resources.color.hintText),
                ),
                TextButton(
                  onPressed: () =>
                      pushNewScreen(context, screen: const Connections()),
                  style: TextButton.styleFrom(
                    backgroundColor: Resources.color.primary,
                    minimumSize: const Size(99, 33),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Connect',
                    style: GoogleFonts.jost(
                      color: Resources.color.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Resources.color.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, color: Resources.color.black),
        ),
        title: Text(
          'Connect',
          style: TextStyle(
              color: Resources.color.black,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              userCategory(
                context,
                Resources.iString.cropFarmer,
                'Crop Farmers',
                'Stay connected with us \nand get your produce',
              ),
              userCategory(
                context,
                Resources.iString.flyFarmer,
                'Black Soldier Fly \nFarmers',
                'Connect with your farmers.',
              ),
              userCategory(
                context,
                Resources.iString.poultryFarmer,
                'Fish/Poultry \nFarmers',
                'Stay Connected.',
              ),
              userCategory(
                context,
                Resources.iString.manualLabourer,
                'Manual Laborers',
                'Apply as a farm staff and \nworkers today.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
