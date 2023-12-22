import 'package:cakelake/login/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  _CreateAccountState createState() => _CreateAccountState();
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
                        SizedBox(
                          height: Get.height * 0.0645,
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
                                Icons.person,
                                color: myGrey,
                              ),
                              hintText: "Username or Email",
                              hintStyle: GoogleFonts.montserrat(
                                  color: myGrey,
                                  fontSize: 11.43,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.04,
                        ),
                        SizedBox(
                          height: Get.height * 0.0645,
                          child: TextFormField(
                            obscureText: !_showPassword,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: myBrownColor),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: myGrey),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              prefixIcon: Icon(Icons.lock, color: myGrey),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                                icon: Icon(
                                  _showPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: myGrey,
                                ),
                              ),
                              hintText: "Password",
                              hintStyle: GoogleFonts.montserrat(
                                  color: myGrey,
                                  fontSize: 11.43,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.04,
                        ),
                        SizedBox(
                          height: Get.height * 0.0645,
                          child: TextFormField(
                            obscureText: !_showConfirmPassword,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: myBrownColor),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: myGrey),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              prefixIcon: Icon(Icons.lock, color: myGrey),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _showConfirmPassword =
                                        !_showConfirmPassword;
                                  });
                                },
                                icon: Icon(
                                  _showConfirmPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: myGrey,
                                ),
                              ),
                              hintText: "Confirm Password",
                              hintStyle: GoogleFonts.montserrat(
                                  color: myGrey,
                                  fontSize: 11.43,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
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
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: myBrownColor,
                    padding: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.2,
                        vertical: Get.height * 0.015),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  child: Text(
                    "Create Account",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 19.05,
                        fontWeight: FontWeight.w600),
                  ),
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
