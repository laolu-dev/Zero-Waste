import 'package:flutter/material.dart';
import '../../constants/constant.dart';

class ResetSuccess extends StatelessWidget {
  const ResetSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 123.5),
        child: Column(children: [
          const Placeholder(fallbackHeight: 229, fallbackWidth: 229),
          Text(
            'Password Changed\nSuccessfully',
            style: textStyleOne.copyWith(fontSize: 28),
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
        ]),
      ),
    );
  }
}
