import 'package:cakelake/login/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      body: Center(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height * 0.12,
            ),
            Text(
              "Create an account",
              style: TextStyle(
                color: myBrownColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: Get.height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Form(
                key: _formKey,
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
                          Icons.person,
                          color: myGrey,
                        ),
                        hintText: "Username or Email",
                        hintStyle: TextStyle(color: myGrey),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.04,
                    ),
                    TextFormField(
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
                        hintStyle: TextStyle(color: myGrey),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.04,
                    ),
                    TextFormField(
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
                              _showConfirmPassword = !_showConfirmPassword;
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
                        hintStyle: TextStyle(color: myGrey),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.04,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "By clicking the ",
                        style: greyText(),
                        children: [
                          const TextSpan(
                            text: "Register",
                            style: TextStyle(
                              color: Color(0xFFFF4B26),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " button, you agree to the public offer",
                            style: greyText(),
                          ),
                        ],
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
                            horizontal: Get.width * 0.15,
                            vertical: Get.height * 0.015),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      child: const Text(
                        "Create Account",
                        style:
                            TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
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
                            style: TextStyle(
                              color: myGrey,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Image.asset('assets/image/facebook.png'),
                            ),
                            SizedBox(
                              width: Get.height * 0.02,
                            ),
                            GestureDetector(
                              child: Image.asset('assets/image/google.png'),
                            ),
                            SizedBox(
                              width: Get.height * 0.02,
                            ),
                            GestureDetector(
                              child: Image.asset('assets/image/apple.png'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        RichText(
                          text: TextSpan(
                            text: "I Already Have an Account ",
                            style: greyText(),
                            children: [
                              TextSpan(
                                text: "Login",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: myBrownColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
