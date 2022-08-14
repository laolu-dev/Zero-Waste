import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zero_waste/service/firebase_social_auth.dart';
import 'package:zero_waste/views/tabs.dart';
import '../../res/res.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);
  Container _login(Widget child) {
    return Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final socialAuth = SocialAuth();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            socialAuth.signInWithFacebook().whenComplete(
                () => Navigator.pushReplacementNamed(context, AppPages.id));
          },
          child: _login(SvgPicture.asset(Resources.iString.fbIcon)),
        ),
        const SizedBox(width: 12),
        GestureDetector(
          onTap: () {
            socialAuth.signInWithGoogle().whenComplete(
                () => Navigator.pushReplacementNamed(context, AppPages.id));
          },
          child: _login(SvgPicture.asset(Resources.iString.googleIcon)),
        ),
        const SizedBox(width: 12),
        GestureDetector(
          onTap: () {},
          child: _login(SvgPicture.asset(Resources.iString.linkInIcon)),
        ),
      ],
    );
  }
}
