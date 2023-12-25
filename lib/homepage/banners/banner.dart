import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBanner extends StatefulWidget {
  const MyBanner({super.key});

  @override
  State<MyBanner> createState() => _MyBannerState();
}

class _MyBannerState extends State<MyBanner> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.28,
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/image/banner/Bannar_Big.jpg',
                height: Get.height * 0.215,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: Get.height * 0.05,
                  left: Get.width * 0.06,
                ),
                child: SizedBox(
                  height: Get.height * 0.07,
                  width: Get.width * 0.4,
                  child: Text(
                    'Indulge Your Senses: The Sweet Symphony of Gourmet Cakes Await You!',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: Get.height * 0.13,
                  left: Get.width * 0.06,
                ),
                child: SizedBox(
                  height: Get.height * 0.04,
                  width: Get.width * 0.53,
                  child: Text(
                    'Explore Exquisite Flavors and Irresistible Designs in Our Online Cake Boutique for Every Celebration',
                    style: GoogleFonts.poppins(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          DotsIndicator(
            position: 2,
            dotsCount: 5,
            decorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              activeColor: Colors.black,
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ],
      ),
    );
  }
}
