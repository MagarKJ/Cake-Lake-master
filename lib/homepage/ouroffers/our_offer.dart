import 'package:cakelake/homepage/ouroffers/offer_list.dart';
import 'package:cakelake/widgets/seeall.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OurOffers extends StatelessWidget {
  const OurOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      height: Get.height * 0.53,
      width: Get.width * 0.96,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              //color: Colors.blue,
              height: Get.height * 0.03,
              width: Get.width * 0.24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Our',
                    style: GoogleFonts.jost(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Offers',
                    style: GoogleFonts.jost(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          OurOffferList(),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Center(
            child: SizedBox(
              height: Get.height * 0.05,
              width: Get.width * 0.3,
              child: const SeeAll(),
            ),
          ),
        ],
      ),
    );
  }
}
