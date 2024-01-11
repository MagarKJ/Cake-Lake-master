
import 'package:cakelake/featrures/homepage/new%20arrivals/expanded_new_arrivals.dart';
import 'package:cakelake/featrures/homepage/new%20arrivals/new_arrival_list.dart';

import 'package:cakelake/widgets/appbar.dart';
import 'package:cakelake/widgets/seeall.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OurOffers extends StatelessWidget {
  const OurOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: Get.height * 0.55,
      width: Get.width * 0.95,
      child: Column(
        children: [
          const AppHeader(
            title1: 'New',
            title2: 'Arrivals',
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          OurOffferList(),
          Center(
            child: Container(
              // color: Colors.red,
              height: Get.height * 0.05,
              width: Get.width * 0.2,
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
