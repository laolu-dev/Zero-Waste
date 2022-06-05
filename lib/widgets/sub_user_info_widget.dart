import 'package:flutter/material.dart';

class SubUserInfo extends StatelessWidget {
  final String title;
  final String subtitle2;
  final String? subtitle1;
  final TextStyle? title1TextStyle;
  final Color? subtitle2Color;
  const SubUserInfo({
    Key? key,
    required this.title,
    required this.subtitle2,
    this.subtitle1,
    this.title1TextStyle,
    this.subtitle2Color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: title1TextStyle ??
              const TextStyle(
                fontFamily: 'Jost',
                fontSize: 10.0,
                color: Colors.black,
              ),
        ),
        subtitle1 != null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subtitle1!,
                    style: const TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 10.0,
                        color: Colors.black),
                  ),
                  Text(
                    subtitle2,
                    style: const TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 10.0,
                        color: Colors.black),
                  ),
                ],
              )
            : Text(
                subtitle2,
                style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 10.0,
                    color: subtitle2Color ?? Colors.black),
              ),
      ],
    );
  }
}
