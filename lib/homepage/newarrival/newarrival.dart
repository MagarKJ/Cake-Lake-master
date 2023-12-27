import 'package:cakelake/homepage/newarrival/newarriaval_list.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: Get.height * 0.41,
      width: Get.width * 0.96,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //  color: Colors.white,
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
              const SeeAll(),
            ],
          ),
          NewArrivalList(),
        ],
      ),
    );
  }
}

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Text(
            'SEE ALL',
            style: GoogleFonts.mulish(
                color: myMainYellow, fontSize: 12, fontWeight: FontWeight.w800),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: myMainYellow,
            size: 16,
          ),
        ],
      ),
    );
  }
}
