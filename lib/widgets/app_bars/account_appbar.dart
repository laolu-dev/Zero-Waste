import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/res.dart';



class AccountBar extends StatelessWidget {
  final String title;
  const AccountBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: GoogleFonts.jost(
              color: Resources.color.black,
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),
      ],
    );
  }
}
