import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductWidget extends StatelessWidget {
  final String productImage;
  final String productName;
  final String userLocation;
  final String harvestDate;
  final String productWeight;
  const ProductWidget({
    Key? key,
    required this.productImage,
    required this.productName,
    required this.userLocation,
    required this.harvestDate,
    required this.productWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
      padding: const EdgeInsets.only(right: 20.0),
      height: 173,
      decoration: BoxDecoration(
        border: Border.all(color: HexColor('#0A9D56')),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20.0,
            offset: const Offset(0.0, 0.5),
          ),
        ],
        borderRadius: BorderRadius.circular(20.0),
        color: HexColor('#E3FFF7'),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                productImage,
                height: 132.0,
                width: 154.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    productName,
                    style: const TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  Text(
                    'Location: $userLocation',
                    style: const TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 14.0,
                        color: Colors.black),
                  ),
                  Text(
                    'Harvest: $harvestDate',
                    style: const TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 14.0,
                        color: Colors.black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productWeight,
                        style: const TextStyle(
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w900,
                            fontSize: 14.0,
                            color: Colors.black),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
