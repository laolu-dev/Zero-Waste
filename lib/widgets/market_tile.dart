import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/res.dart';

class MarketTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String weight;
  final String date;
  const MarketTile(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.subTitle,
      required this.weight,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 2.0,
      leading: CircleAvatar(
        radius: 23.5,
        child: imageUrl.isNotEmpty
            ? Image.network(imageUrl, fit: BoxFit.cover)
            : const Icon(Icons.image),
      ),
      title: Text(title,
          style: GoogleFonts.jost(
              color: Resources.color.black,
              fontSize: 18,
              fontWeight: FontWeight.w600)),
      subtitle: Text(subTitle,
          style: GoogleFonts.jost(
              color: Resources.color.tField,
              fontSize: 12,
              fontWeight: FontWeight.w400)),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(date,
              style: GoogleFonts.jost(
                  color: Resources.color.tField,
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 6.0),
          Text(weight,
              style: GoogleFonts.jost(
                  color: Resources.color.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}
