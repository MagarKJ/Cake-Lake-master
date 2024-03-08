import 'package:cakelake/widgets/appbar.dart';
import 'package:cakelake/widgets/button.dart';
import 'package:cakelake/utils/colors.dart';
import 'package:cakelake/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Reviewpage extends StatelessWidget {
  const Reviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppHeader(
            title1: 'Reviews',
            icon: Icons.arrow_back_ios_new_outlined,
          ),
          SizedBox(
            //  color: Colors.red,
            height: Get.height * 0.07,
            width: Get.width * 0.88,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StarRating(
                  initialRating: 0,
                  size: 12,
                ),
                CustomButton(
                  buttonText: 'Add Review',
                  onPressed: () {},
                  width: Get.width * 0.06,
                  height: Get.height * 0.01,
                  fontSize: 13,
                  icon: Icons.edit_square,
                  backGroundColor: myBrownColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
