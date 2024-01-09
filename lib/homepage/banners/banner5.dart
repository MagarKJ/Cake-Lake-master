import 'package:cakelake/utils/pathing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBanner5 extends StatefulWidget {
  const MyBanner5({super.key});

  @override
  State<MyBanner5> createState() => _MyBanner5State();
}

class _MyBanner5State extends State<MyBanner5> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.asset(
            bigBanner,
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
