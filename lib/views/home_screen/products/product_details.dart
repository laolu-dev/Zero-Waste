import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zero_waste/widgets/customer_user_info.dart';
import 'package:zero_waste/widgets/product_widget.dart';
import '../../../config/app_theme.dart';
import '../../../res/res.dart';
import '../../../widgets/app_bars/page_appbar.dart';
import '../../../widgets/image_viewer_widget.dart';
import '../chat_screen.dart';

class ProductDetails extends StatefulWidget {
  final CustomerUserInfo customerUserChatInfo;
  final String? userProfilePicture;
  final String productImage;
  final String productName;
  final String userName;
  final String userLocation;
  final String harvestDate;
  final String typeOfFarmer;
  final String productWeight;
  final double productRating;
  const ProductDetails(
      {Key? key,
      required this.userProfilePicture,
      required this.userLocation,
      required this.harvestDate,
      required this.productWeight,
      required this.productRating,
      required this.userName,
      required this.typeOfFarmer,
      required this.customerUserChatInfo,
      required this.productName,
      required this.productImage})
      : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PageBar(pageTitle: 'Products'),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: null,
                        style: ThemeHelper().buttonStyle(50.0, 10.0),
                        child: Text(
                          'Active',
                          style: GoogleFonts.jost(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: null,
                        style: ThemeHelper()
                            .buttonStyle(50.0, 10.0, Colors.grey[200]),
                        child: Text(
                          'Completed',
                          style: GoogleFonts.jost(
                              color: Resources.color.tField,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.productName,
                            style: GoogleFonts.jost(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            widget.productWeight,
                            style: GoogleFonts.jost(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0,
                              color: Resources.color.primaryColor,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            'Harvest: ${widget.userLocation}',
                            style: GoogleFonts.jost(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ImageViewerWidget(
                    productImage: widget.productImage, height: 173.0),
                Row(
                  children: [
                    Expanded(
                      child: ImageViewerWidget(
                          productImage: widget.productImage, height: 120.0),
                    ),
                    Expanded(
                      child: ImageViewerWidget(
                          productImage: widget.productImage, height: 120.0),
                    ),
                    Expanded(
                      child: ImageViewerWidget(
                          productImage: widget.productImage, height: 120.0),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Excellent Harvest available for exchange',
                  style: GoogleFonts.jost(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ProductWidget(
                    image: widget.userProfilePicture!,
                    title: widget.userName,
                    subtitle1: widget.typeOfFarmer,
                    subtitle2: widget.userLocation,
                    baseIcon: SizedBox(
                      width: 193,
                      child: Row(
                        children: [
                          Text(
                            widget.productRating.toStringAsFixed(1),
                            style: GoogleFonts.jost(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                              color: Resources.color.primaryColor,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: widget.productRating >= 1.0
                                      ? Colors.yellow
                                      : Colors.grey,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: widget.productRating >= 2.0
                                      ? Colors.yellow
                                      : Colors.grey,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: widget.productRating >= 3.0
                                      ? Colors.yellow
                                      : Colors.grey,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: widget.productRating >= 4.0
                                      ? Colors.yellow
                                      : Colors.grey,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: widget.productRating == 5.0
                                      ? Colors.yellow
                                      : Colors.grey,
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChatScreen(
                                      customerUserChatInfo:
                                          widget.customerUserChatInfo),
                                ),
                              );
                            },
                            style: ThemeHelper().buttonStyle(35.0, 10.0),
                            child: Text(
                              'Chat',
                              style: GoogleFonts.jost(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
