import 'package:cakelake/homepage/top_categories/top_categories_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCatergories extends StatelessWidget {
  const TopCatergories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.pink,
      height: Get.height * 0.3,
      width: Get.width,
      child: Column(
        children: [
          SizedBox(
            height: Get.height * 0.02,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              //color: Colors.blue,
              height: Get.height * 0.035,
              width: Get.width * 0.34,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Top',
                    style: GoogleFonts.jost(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Categories',
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
          TopCategoriesList(),
        ],
      ),
    );
  }
}
