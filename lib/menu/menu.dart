import 'package:cakelake/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SizedBox(
          // color: Colors.red,
          width: Get.width * 0.95,
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.03,
              ),
              _buildRowContent(
                  context, 'FeedBack', Icons.feedback_outlined, () {}),
              _buildRowContent(context, 'Terms & Conditions',
                  Icons.description_outlined, () {}),
              _buildRowContent(
                  context, 'Privacy Policy', Icons.description_outlined, () {}),
              _buildRowContent(
                  context, 'FAQ', Icons.question_mark_outlined, () {})
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRowContent(BuildContext context, String title, IconData icon1,
      void Function()? onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: myLightGrey, width: 1))),
        child: ListTile(
          title: Row(
            children: [
              Icon(
                icon1,
                color: myBrownColor,
                size: Get.height * 0.03,
              ),
              SizedBox(
                width: Get.width * 0.03,
              ),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: myDarkGrey,
            size: Get.height * 0.03,
          ),
        ),
      ),
    );
  }
}
