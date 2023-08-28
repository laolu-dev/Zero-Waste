import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:zero_waste/core/constants/styles/colors.dart';
import '../../../../core/models/product.dart';
import '../screens/product_details.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  const ProductWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushNewScreen(context, screen: ProductDetails(productInfo: product));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary),
          borderRadius: BorderRadius.circular(12),
          color: AppColors.primary.withOpacity(.1),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(product.productImage,
                  height: 120, width: 120, fit: BoxFit.fill),
            ),
            const SizedBox(width: 15.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.productName,
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 12),
                  Text(product.userLocation),
                  const SizedBox(height: 12),
                  Text(product.harvestDate),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.productWeight,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                      const Icon(Icons.navigate_next)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
