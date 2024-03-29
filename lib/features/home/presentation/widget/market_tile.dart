import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/styles/colors.dart';

import '../../../products/presentation/widgets/profile_image_clipper.dart';


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
      leading: ClipOval(
        clipper: ProfileImageClipper(),
        child: imageUrl.isNotEmpty
            ? AspectRatio(
                aspectRatio: 1.5,
                child: Image.network(imageUrl, fit: BoxFit.fill),
              )
            : const Icon(Icons.image),
      ),
      title: Text(
        title,
        style: GoogleFonts.jost(
            color: AppColors.black, fontSize: 18, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        subTitle,
        style: GoogleFonts.jost(
            color: AppColors.hintText,
            fontSize: 12,
            fontWeight: FontWeight.w400),
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            date,
            style: GoogleFonts.jost(
                color: AppColors.hintText,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 6.0),
          Text(
            weight,
            style: GoogleFonts.jost(
                color: AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
