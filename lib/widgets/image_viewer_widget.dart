import 'package:flutter/material.dart';

import '../constants/constant.dart';

class ImageViewerWidget extends StatelessWidget {
  final String productImage;
  final double height;
  const ImageViewerWidget({
    Key? key,
    required this.productImage,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: primary),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20.0,
            offset: const Offset(0.0, 0.5),
          ),
        ],
        borderRadius: BorderRadius.circular(20.0),
        // color: primary,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.network(
          productImage,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
