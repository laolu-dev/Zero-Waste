import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';
import 'package:zero_waste/models/new_conversation.dart';
import 'package:zero_waste/models/product.dart';
import 'package:zero_waste/provider/add_new_conversation.dart';
import 'package:zero_waste/provider/product_data.dart';
import '../../../utils/config/res.dart';

class ProductDetails extends StatelessWidget {
  final Product productInfo;
  const ProductDetails({Key? key, required this.productInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prod = Provider.of<ProductData>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios, color: Resources.color.black),
          ),
        ),
        title: Text(
          'Product Information',
          style: GoogleFonts.jost(
              color: Resources.color.black,
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productInfo.productName,
                      style: GoogleFonts.jost(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      productInfo.productWeight,
                      style: GoogleFonts.jost(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        color: Resources.color.primary,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      'Harvest: ${productInfo.harvestDate}',
                      style: GoogleFonts.jost(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                        image: NetworkImage(productInfo.productImage),
                        fit: BoxFit.contain),
                    color: Colors.red[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                productInfo.comment,
                style: GoogleFonts.jost(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              const SizedBox(height: 10.0),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Resources.color.primary),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        productInfo.productImage,
                        fit: BoxFit.fill,
                        width: 114,
                        height: 102,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'data',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            'data',
                          ),
                          const Text(
                            'data',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${productInfo.productRating}',
                                style: TextStyle(
                                  color: Resources.color.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SmoothStarRating(
                                size: 20,
                                color: Resources.color.primary,
                                borderColor: Colors.red,
                                onRatingChanged: (ratingValue) {
                                  prod.rate(ratingValue);
                                },
                              ),
                              TextButton(
                                onPressed: () {
                                  context
                                      .read<ConversationsProvider>()
                                      .addNewConversation(
                                        NewConnection(
                                            name: '',
                                            profileUrl: '',
                                            farmerType: '',
                                            location: ''),
                                      );
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Resources.color.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Text(
                                  'Chat',
                                  style: TextStyle(
                                    color: Resources.color.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
