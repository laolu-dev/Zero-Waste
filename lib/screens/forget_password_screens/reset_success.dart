import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/constant.dart';

class ResetSuccess extends StatelessWidget {
  const ResetSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 123.5),
        child: Column(
          children: [
            SvgPicture.asset('assets/images/Self-confidence-amico.svg'),
            Text(
              'Password Changed\nSuccessfully',
              style: textStyleOne.copyWith(fontSize: 28),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 57.5),
            Container(
              height: 52,
              constraints: const BoxConstraints(maxWidth: 400),
              child: ElevatedButton(
                onPressed: () {},
                style: elevatedButtonStyleTwo,
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
