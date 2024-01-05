import 'package:cakelake/widgets/appbar.dart';
import 'package:cakelake/widgets/button.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:cakelake/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddReview extends StatelessWidget {
   AddReview({super.key});
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        FocusScope.of(context).unfocus();
      }),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const AppHeader(
                title1: 'Add ',
                title2: 'Review',
                icon: Icons.arrow_back_ios_new_outlined,
              ),
              Center(
                child: Container(
                  //color: Colors.red,
                  height: Get.height * 0.1,
                  width: Get.width * 0.6,
                  child: StarRating(
                    size: Get.height * 0.05,
                    initialRating: rating,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Container(
                // color: Colors.amber,
                height: Get.height * 0.4,
                width: Get.width * 0.9,

                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Title',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.05,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Describe Your Experience',
                        border: OutlineInputBorder(),
                        alignLabelWithHint: true,

                        // contentPadding:
                        //     EdgeInsets.symmetric(vertical: Get.height * 0.08),
                      ),
                      maxLines: 6,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.25,
              ),
              Container(
                height: Get.height * 0.08,
                width: Get.width * 0.8,
                child: CustomButton(
                  buttonText: 'Submit Review',
                  onPressed: () {},
                  width: Get.width * 0.25,
                  height: Get.height * 0.015,
                  fontSize: 13,
                  backGroundColor: myBrownColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
