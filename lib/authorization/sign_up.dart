import 'package:cakelake/authorization/login.dart';
import 'package:cakelake/widgets/button.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:cakelake/widgets/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  bool _showConfirmPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: Get.height * 0.12,
                ),
                SizedBox(
                  height: Get.height * 0.06,
                  width: Get.width * 0.831,
                  child: Text(
                    "Create an account",
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
                  key: _formKey,
                  child: SizedBox(
                    height: Get.height * 0.3,
                    width: Get.width * 0.831,
                    child: Column(
                      children: [
                        const CustomTextField(
                          prefixIcon: Icons.person,
                          hintText: "Username or Email",
                          obscureText: false,
                        ),
                        SizedBox(height: Get.height * 0.04),
                        CustomTextField(
                          prefixIcon: Icons.lock,
                          hintText: "Password",
                          obscureText: true,
                          showPassword: _showPassword,
                          onTogglePassword: (bool show) {
                            setState(() {
                              _showPassword = show;
                            });
                          },
                        ),
                        SizedBox(height: Get.height * 0.04),
                        CustomTextField(
                          prefixIcon: Icons.lock,
                          hintText: "Confirm Password",
                          obscureText: true,
                          showPassword: _showConfirmPassword,
                          onTogglePassword: (bool show) {
                            setState(() {
                              _showConfirmPassword = show;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(right: Get.width * 0.13),
                  child: SizedBox(
                    height: Get.height * 0.05,
                    width: Get.width * 0.677,
                    child: RichText(
                      text: TextSpan(
                        text: "By clicking the ",
                        style: GoogleFonts.jost(
                            color: myDarkGrey,
                            fontSize: 11.43,
                            fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(
                            text: "Register",
                            style: GoogleFonts.jost(
                                color: myRed,
                                fontSize: 11.43,
                                fontWeight: FontWeight.w400),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Handle button click here
                              },
                          ),
                          TextSpan(
                            text: " button, you agree to the public offer",
                            style: GoogleFonts.jost(
                                color: myDarkGrey,
                                fontSize: 11.43,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                CustomButton(
                  buttonText: 'Create Account',
                  onPressed: () {},
                  height: Get.height * 0.015,
                  width: Get.width * 0.2,
                  fontSize: 13,
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
                        text: "I Already Have an Account ",
                        style: GoogleFonts.jost(
                            fontSize: 13.43,
                            color: myDarkGrey,
                            fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(
                            text: "Login",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: myBrownColor,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(() => const LogIn());
                                // Handle button click here
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

  TextStyle greyText() {
    return TextStyle(
      color: myGrey,
    );
  }
}
