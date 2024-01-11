import 'package:cakelake/featrures/homepage/top_categories/categories_list.dart';
import 'package:cakelake/featrures/homepage/top_categories/top_categories_list.dart';

import 'package:cakelake/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopCatergories extends StatelessWidget {
  final ProductTop? selectedCategory;
  const TopCatergories({super.key, this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.pink,
      height: Get.height * 0.3,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: Get.width * 0.03),
            child: const AppHeader(
              title1: 'Top',
              title2: 'Categories',
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
