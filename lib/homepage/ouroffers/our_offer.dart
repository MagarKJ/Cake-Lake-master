import 'package:cakelake/homepage/ouroffers/expanded_ouroffers.dart';
import 'package:cakelake/homepage/ouroffers/offer_list.dart';
import 'package:cakelake/widgets/appbar.dart';
import 'package:cakelake/widgets/seeall.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OurOffers extends StatelessWidget {
  const OurOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      height: Get.height * 0.54,
      width: Get.width * 0.95,
      child: Column(
        children: [
          const AppHeader(
            title1: 'Our ',
            title2: 'Offers',
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
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const ExpandedOurOffers());
                },
                child: const SeeAll(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
