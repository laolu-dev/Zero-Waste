import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zero_waste/constants/constant.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

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
                        padding: const EdgeInsets.all(5.0),
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
              const SizedBox(height: 16),
              Container(
                constraints: const BoxConstraints(maxWidth: 400),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Grains",
                      style: GoogleFonts.jost(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      "1kg",
                      style: GoogleFonts.jost(
                          color: colorGreen,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Harvest",
                      style: GoogleFonts.jost(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'images/prodImg1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Image.asset(
                          "images/prodImg2.png",
                          fit: BoxFit.cover,
                        )),
                    const SizedBox(width: 15),
                    Expanded(
                        flex: 1,
                        child: Image.asset(
                          "images/prodImg3.png",
                          fit: BoxFit.cover,
                        )),
                    const SizedBox(width: 15),
                    Expanded(
                        flex: 1,
                        child: Image.asset(
                          "images/prodImg4.png",
                          fit: BoxFit.cover,
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 23),
              Text(
                'Excellent Harvest available for exchange',
                style: GoogleFonts.jost(fontSize: 20),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(227, 255, 247, 1),
                    borderRadius: BorderRadius.circular(12)),
                alignment: Alignment.centerLeft,
                height: 139,
                constraints: const BoxConstraints(maxWidth: 400),
                child: SizedBox(
                  height: 107,
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12)),
                          child: SizedBox(
                            width: 114,
                            height: 102,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                "images/prodImg5.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("John Doe",
                              style: GoogleFonts.jost(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(0, 0, 0, 1))),
                          Text('Crop Farmer',
                              style: GoogleFonts.jost(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 1))),
                          Text('Lagos Nigeria',
                              style: GoogleFonts.jost(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 1))),
                          Container(
                            constraints: const BoxConstraints(minWidth: 160),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("4.3",
                                    style: GoogleFonts.jost(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 1))),
                                const SizedBox(width: 3),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                    )
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 35, vertical: 5),
                                  ),
                                  child: const Text("data"),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
