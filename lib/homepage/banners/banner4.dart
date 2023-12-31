import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBanner4 extends StatefulWidget {
  const MyBanner4({super.key});

  @override
  State<MyBanner4> createState() => _MyBanner4State();
}

class _MyBanner4State extends State<MyBanner4> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.asset(
            'assets/image/banner/Bannar_Big.jpg',
            height: Get.height * 0.225,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: Get.height * 0.05,
              left: Get.width * 0.06,
            ),
            child: SizedBox(
              height: Get.height * 0.07,
              width: Get.width * 0.6,
              child: Text(
                'Indulge Your Senses: The Sweet Symphony of Gourmet Cakes Await You!',
                style: GoogleFonts.poppins(
                  fontSize: 14,
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
              width: Get.width * 0.7,
              child: Text(
                'Explore Exquisite Flavors and Irresistible Designs in Our Online Cake Boutique for Every Celebration',
                style: GoogleFonts.poppins(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
