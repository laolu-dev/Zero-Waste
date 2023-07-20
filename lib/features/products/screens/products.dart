import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/app_theme.dart';
import '../../../shared/res.dart';

import '../widgets/product_builder.dart';



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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              children: [
                // const PageBar(pageTitle: 'Products'),
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
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
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
                const SizedBox(height: 30.0),
                const ProductBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
