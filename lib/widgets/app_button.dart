import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/res.dart';

class AppButton extends StatelessWidget {
  final Function() btn;
  final String btnName;

  const AppButton({
    Key? key,
    required this.btnName,
    required this.btn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: btn,
      style: ElevatedButton.styleFrom(
        primary: Resources.color.primary,
        minimumSize: const Size(double.infinity, 51),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        btnName,
        style: GoogleFonts.jost(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Resources.color.white),
      ),
    );
  }
}
