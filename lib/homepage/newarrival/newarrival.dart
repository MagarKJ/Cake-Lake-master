import 'package:cakelake/homepage/newarrival/expanded_newarrival.dart';
import 'package:cakelake/homepage/newarrival/newarriaval_list.dart';
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
      width: Get.width * 0.94,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AppHeader(
                title1: 'New ',
                title2: 'Arrival',
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const ExpandedNewArrival());
                },
                child: const SeeAll(),
              ),
            ],
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          NewArrivalList(),
        ],
      ),
    );
  }
}
