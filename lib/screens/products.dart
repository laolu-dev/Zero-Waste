import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 61),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.chevron_left),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Products",
                            style: textStyleOne,
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: colorGreen),
                        ),
                        child: const Icon(Icons.notifications_outlined),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: respndBtn(
                            text: 'Active',
                            textColor: lineColor,
                            bgColor: colorGreen)),
                    const SizedBox(width: 19),
                    Expanded(
                        flex: 1,
                        child: respndBtn(
                            text: 'Complete',
                            textColor: blackColor,
                            bgColor: lineColor)),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: ListView(children: [
                    productList(
                        image: backGroundJpeg,
                        title: 'Grains',
                        location: "Lagos Nigeria",
                        time: 'May 2020'),
                    const SizedBox(height: 16),
                    productList(
                        image: backGroundJpeg,
                        title: 'Fruits',
                        location: "Lagos Nigeria",
                        time: 'May 2020'),
                    const SizedBox(height: 16),
                    productList(
                        image: backGroundJpeg,
                        title: 'Larvas',
                        location: "Lagos Nigeria",
                        time: 'May 2020'),
                    const SizedBox(height: 16),
                    productList(
                        image: backGroundJpeg,
                        title: 'Fertilizer',
                        location: "Lagos Nigeria",
                        time: 'May 2020'),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
