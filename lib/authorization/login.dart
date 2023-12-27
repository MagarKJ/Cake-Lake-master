import 'package:cakelake/authorization/forgot_password.dart';
import 'package:cakelake/authorization/sign_up.dart';
import 'package:cakelake/bottomnav/bottomnav.dart';
import 'package:cakelake/widgets/button.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:cakelake/widgets/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: Get.height * 0.17,
                ),
                SizedBox(
                  height: Get.height * 0.06,
                  width: Get.width * 0.831,
                  child: Text(
                    "Log in into your account",
                    style: GoogleFonts.jost(
                        fontSize: 21,
                        color: myBrownColor,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Form(
                  child: SizedBox(
                    height: Get.height * 0.18,
                    width: Get.width * 0.831,
                    child: Column(
                      children: [
                        const CustomTextField(
                          prefixIcon: Icons.vpn_key,
                          hintText: 'Username or Email',
                          obscureText: false,
                        ),
                        SizedBox(height: Get.height * 0.04),
                        CustomTextField(
                          prefixIcon: Icons.lock,
                          hintText: 'Password',
                          obscureText: true,
                          showPassword: _showPassword,
                          onTogglePassword: (bool show) {
                            setState(() {
                              _showPassword = show;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Get.to(() => const ForgotPassword());
                    },
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.jost(
                        color: myGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    )),
                SizedBox(
                  height: Get.height * 0.07,
                ),
                CustomButton(
                  buttonText: 'Log In',
                  onPressed: () {
                    Get.to(() => const MyBottomNavigationBar());
                  },
                  width: Get.width * 0.2,
                  height: Get.height * 0.015,
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                Column(
                  children: [
                    Center(
                      child: Text(
                        "- OR Continue with -",
                        style: GoogleFonts.jost(
                            fontSize: 12,
                            color: myDarkGrey,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Image.asset('assets/image/google.png'),
                          onTap: () {},
                        ),
                        SizedBox(
                          width: Get.height * 0.02,
                        ),
                        GestureDetector(
                          child: Image.asset('assets/image/apple.png'),
                          onTap: () {},
                        ),
                        SizedBox(
                          width: Get.height * 0.02,
                        ),
                        GestureDetector(
                          child: Image.asset('assets/image/facebook.png'),
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "I Don't Have an Account ",
                        style: GoogleFonts.jost(
                            fontSize: 13.43,
                            color: myDarkGrey,
                            fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(
                            text: "Sign up",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: myBrownColor,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(() => const CreateAccount());
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
