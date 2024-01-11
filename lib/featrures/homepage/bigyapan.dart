import 'package:cakelake/utils/pathing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Bigyapan extends StatelessWidget {
  const Bigyapan({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.green,
          height: Get.height * 0.22,
          width: Get.width,
          child: Image.asset(
            add,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: Get.width * 0.87, top: Get.height * 0.014),
          child: Container(
            height: Get.height * 0.025,
            width: Get.width * 0.05,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Center(
              child: Text(
                'AD',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
