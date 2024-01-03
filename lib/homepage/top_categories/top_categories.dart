import 'package:cakelake/homepage/top_categories/top_categories_list.dart';
import 'package:cakelake/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopCatergories extends StatelessWidget {
  const TopCatergories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.pink,
      height: Get.height * 0.3,
      width: Get.width * 0.96,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppHeader(
            title1: 'Top ',
            title2: 'Categories',
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
