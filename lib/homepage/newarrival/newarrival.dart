import 'package:cakelake/homepage/newarrival/expanded_newarrival.dart';
import 'package:cakelake/homepage/newarrival/newarriaval_list.dart';
import 'package:cakelake/widgets/seeall.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
      width: Get.width * 0.96,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                //  color: Colors.red,
                height: Get.height * 0.04,
                width: Get.width * 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'New',
                      style: GoogleFonts.jost(
                          fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Arrivals',
                      style: GoogleFonts.jost(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                    () => ExpandedNewArrival(
                      products: NewArrivalList().products,
                    ),
                  );
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
