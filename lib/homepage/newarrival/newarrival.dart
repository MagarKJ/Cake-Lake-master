import 'package:cakelake/homepage/newarrival/hot_sale.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //  color: Colors.red,
      height: Get.height * 0.38,
      width: Get.width * 0.96,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                //color: Colors.red,
                height: Get.height * 0.03,
                width: Get.width * 0.24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'New',
                      style: GoogleFonts.jost(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Arrivals',
                      style: GoogleFonts.jost(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'SEE ALL',
                      style: GoogleFonts.mulish(
                          color: myMainYellow,
                          fontSize: 8,
                          fontWeight: FontWeight.w800),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: myMainYellow,
                      size: 13,
                    ),
                  ],
                ),
              )
            ],
          ),
          HotSales(),
        ],
      ),
    );
  }
}

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Text(
              'SEE ALL',
              style: GoogleFonts.mulish(
                  color: myMainYellow,
                  fontSize: 12,
                  fontWeight: FontWeight.w800),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: myMainYellow,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
