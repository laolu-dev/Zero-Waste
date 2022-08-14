import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class FarmerType extends StatelessWidget {
  final String optionText;
  final Function()? isPressed;
  final Color? isSelectedColor;
  final Color? borderColor;
  const FarmerType(
      {Key? key,
      required this.optionText,
      required this.isPressed,
      required this.isSelectedColor,
      this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 153,
      height: 103,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: dividerColor, width: 2.5),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: TextButton(
        onPressed: isPressed,
        style: TextButton.styleFrom(
            backgroundColor: isSelectedColor,
            primary: borderColor,
            minimumSize: Size.infinite),
        child: Text(optionText),
      ),
    );
  }
}
