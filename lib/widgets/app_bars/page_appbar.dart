import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zero_waste/res/res.dart';
import 'package:zero_waste/widgets/notification_widget.dart';

class PageBar extends StatelessWidget {
  final String pageTitle;
  const PageBar({Key? key, required this.pageTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            pageTitle,
            style: GoogleFonts.jost(
                color: Resources.color.black,
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
        ),
        const NotificationWidget()
      ],
    );
  }
}
