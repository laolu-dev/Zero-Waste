import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/utils/user_preferences.dart';

const user = UserPreferences.myUser;

AppBar userAppBar(BuildContext context) {
  return AppBar(
    leading: const BackButton(
      color: Colors.blue,
    ),
    title: const Text(
      'My Profile',
      style: TextStyle(color: Colors.black),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}

Column userPopularity(String num, String category) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Text(num), Text(category)],
  );
}

Container userInfo() {
  return Container(
    height: 300,
    decoration: BoxDecoration(
        color: colorGreen,
        borderRadius: const BorderRadius.all(Radius.circular(10))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(height: 10),
        const Text('Collen Morgan'),
        const Text('CropFarmer'),
        const Text('Lagos, Nigeria'),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            userPopularity('18k', 'Followers'),
            userPopularity('11k', 'Following'),
            userPopularity('180k', 'Posts'),
            userPopularity('18k', 'Comments'),
          ],
        ),
        const SizedBox(height: 30),
        ElevatedButton(onPressed: () {}, child: Text('Edit Profile'))
      ],
    ),
  );
}

ElevatedButton profileButtons(String buttonText, bool canSavePost) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      primary: canSavePost ? Color.fromRGBO(233, 233, 233, 1) : colorGreen,
      textStyle: buttonTextStyleTwo,
    ),
    child: Text(
      buttonText,
    ),
  );
}
