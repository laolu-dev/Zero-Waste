
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/styles/colors.dart';
import '../controllers/product_data.dart';
import '../../../../widgets/notification_widget.dart';
import '../widgets/product_widget.dart';

class ProductScreen extends StatefulWidget {
  static const id = 'ProductScreen';
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Products',
          style: GoogleFonts.jost(
              color: AppColors.black,
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 5, right: 10, bottom: 5),
            child: NotificationWidget(),
          )
        ],
      ),
      body: Consumer<ProductData>(
        builder: (context, product, child) {
          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemCount: product.length,
            itemBuilder: (context, index) {
              return ProductWidget(product: product.products[index]);
            },
          );
        },
      ),
    );
  }
}
