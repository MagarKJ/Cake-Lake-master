import 'package:cakelake/login/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 0.25,
          ),
          Padding(
            padding: EdgeInsets.only(right: Get.width * 0.32),
            child: SizedBox(
              height: Get.height * 0.05,
              width: Get.width * 0.5,
              child: Text(
                "Forgot password?",
                style: GoogleFonts.jost(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    color: myBrownColor),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.0645,
                  width: Get.width * 0.831,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: myBrownColor),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: myGrey),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: myGrey,
                        ),
                        hintText: "Enter your Email Address",
                        hintStyle: GoogleFonts.montserrat(
                            color: myGrey,
                            fontSize: 11.43,
                            fontWeight: FontWeight.w500),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: Get.height * 0.0345)),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                RichText(
                    text: TextSpan(
                        text: "*",
                        style: const TextStyle(color: Color(0xFFFF4B26)),
                        children: [
                      TextSpan(
                          text:
                              " We will send you a message to set or reset your new password",
                          style: GoogleFonts.montserrat(
                              color: myDarkGrey,
                              fontSize: 11.43,
                              fontWeight: FontWeight.w400))
                    ])),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.04,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.3, vertical: Get.height * 0.015),
              backgroundColor: myBrownColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            child: Text(
              'Submit',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 19.05,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
