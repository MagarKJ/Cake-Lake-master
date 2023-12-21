import 'package:cakelake/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _checkUserStatus();
  }

  void _checkUserStatus() async {
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Get.to(const OnBoardScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Get.height * 0.45,
                  width: Get.width * 0.5,
                  child: FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    fadeOutDuration: const Duration(milliseconds: 100),
                    image: const AssetImage('assets/splash_screen/image1.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
