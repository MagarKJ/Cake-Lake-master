import 'package:cakelake/featrures/homepage/best%20picks/expanded_recomended.dart';
import 'package:cakelake/featrures/homepage/best%20picks/recomended_list.dart';
import 'package:cakelake/widgets/appbar.dart';
import 'package:cakelake/widgets/seeall.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Recomended extends StatefulWidget {
  const Recomended({super.key});

  @override
  State<Recomended> createState() => _RecomendedState();
}

class _RecomendedState extends State<Recomended> {
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
                  title1: 'Best',
                  title2: 'Picks',
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ExpandedRecomended());
                  },
                  child: const SeeAll(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          const RecomendedList(),
        ],
      ),
    );
  }
}
