import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';

import '../providers/authentication.dart';

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
    children: [
      Text(num, style: buttonTextStyleTwo),
      Text(category, style: buttonTextStyleTwo),
    ],
  );
}

Container userInfo(BuildContext context) {
  final userDetails = Provider.of<Authentication>(context);
  return Container(
    width: 327,
    height: 300,
    padding: const EdgeInsets.only(left: 24, right: 24, top: 0),
    decoration: BoxDecoration(
      color: primaryColor,
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Expanded(
      child: Container(
        padding: const EdgeInsets.all(0),
        width: 278,
        height: 185,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            socialLoginContainer(child: SvgPicture.asset(fbSvg)),
            const Text('Collen Morgan'),
            const SizedBox(height: 2),
            Text(userDetails.farmerType),
            const SizedBox(height: 2),
            const Text('Lagos, Nigeria'),
            const SizedBox(height: 16),
            Wrap(
              spacing: 17,
              children: [
                userPopularity('18k', 'Followers'),
                userPopularity('11k', 'Following'),
                userPopularity('180k', 'Posts'),
                userPopularity('18k', 'Comments'),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 66.5, vertical: 10),
                primary: profileButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                textStyle: contentText.copyWith(
                    color: white, fontWeight: FontWeight.w500),
              ),
              child: const Text('Edit Profile'),
            )
          ],
        ),
      ),
    ),
  );
}

ElevatedButton profileButtons(String buttonText, bool canSavePost) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      primary:
          canSavePost ? const Color.fromRGBO(233, 233, 233, 1) : primaryColor,
      textStyle: buttonTextStyleTwo,
    ),
    child: Text(
      buttonText,
    ),
  );
}
