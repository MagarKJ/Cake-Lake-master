import 'package:cakelake/homepage/newarrival/newarrival.dart';
import 'package:cakelake/homepage/ouroffers/offer_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OurOffers extends StatelessWidget {
  const OurOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      height: Get.height * 0.54,
      width: Get.width * 0.96,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              //color: Colors.blue,
              height: Get.height * 0.03,
              width: Get.width * 0.24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Our',
                    style: GoogleFonts.jost(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Offers',
                    style: GoogleFonts.jost(
                        fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          OurOffferList(),
          const SeeAll(),
        ],
      ),
    );
  }
}
