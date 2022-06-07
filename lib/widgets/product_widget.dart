import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle1;
  final String subtitle2;
  final Widget baseIcon;
  const ProductWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
    required this.baseIcon,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                image,
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
                    title,
                    style: const TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  Text(
                    subtitle1,
                    style: const TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 14.0,
                        color: Colors.black),
                  ),
                  Text(
                    subtitle2,
                    style: const TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 14.0,
                        color: Colors.black),
                  ),
                  baseIcon,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
