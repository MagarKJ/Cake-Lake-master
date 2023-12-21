import 'package:cakelake/login/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            padding:
                EdgeInsets.only(left: Get.width * 0.01, right: Get.width * 0.4),
            child: Text(
              "Forgot password?",
              style: TextStyle(
                color: myBrownColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
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
                TextFormField(
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
                    hintStyle: TextStyle(color: myGrey),
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
                          style: TextStyle(color: myGrey))
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
            child: const Text(
              'Submit',
              style: TextStyle(fontSize: 21),
            ),
          )
        ],
      ),
    );
  }
}
