import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/product_data.dart';
import 'package:zero_waste/widgets/product_widget.dart';

class ProductBuilder extends StatelessWidget {
  const ProductBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductData>(
        builder: (context, productData, child) => SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final product = productData.products[index];
                  return ProductWidget(
                    productImage: product.productImage,
                    productName: product.productName,
                    userLocation: product.userLocation,
                    harvestDate: product.harvestDate,
                    productWeight: product.productWeight,
                  );
                },
                itemCount: productData.length,
              ),
            ));
  }
}
