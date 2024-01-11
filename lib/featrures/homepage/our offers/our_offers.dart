import 'package:cakelake/featrures/homepage/our%20offers/expanded_offers.dart';
import 'package:cakelake/featrures/homepage/our%20offers/offer_list.dart';
import 'package:cakelake/widgets/appbar.dart';
import 'package:cakelake/widgets/seeall.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewArrival extends StatefulWidget {
  const NewArrival({super.key});

  @override
  State<NewArrival> createState() => _NewArrivalState();
}

class _NewArrivalState extends State<NewArrival> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.red,
      height: Get.height * 0.38,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            width: Get.width * 0.95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppHeader(
                  title1: 'Our',
                  title2: 'Offers',
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ExpandedNewArrival());
                  },
                  child: const SeeAll(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          const NewArrivalList(),
        ],
      ),
    );
  }
}
