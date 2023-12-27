import 'package:cakelake/homepage/banners/banner1.dart';
import 'package:cakelake/homepage/banners/banner2.dart';
import 'package:cakelake/homepage/banners/banner3.dart';
import 'package:cakelake/homepage/banners/banner4.dart';
import 'package:cakelake/homepage/banners/banner5.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBanner extends StatefulWidget {
  const MyBanner({super.key});

  @override
  State<MyBanner> createState() => _MyBannerState();
}

class _MyBannerState extends State<MyBanner> {
  final _pageController = PageController(viewportFraction: 1, keepPage: true);
  int currentPage = 0;
  dynamic screens = [
    const MyBanner1(),
    const MyBanner2(),
    const MyBanner3(),
    const MyBanner4(),
    const MyBanner5(),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.blue,
      height: Get.height * 0.285,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            //color: Colors.red,
            height: Get.height * 0.225,
            child: PageView.builder(
                controller: _pageController,
                itemCount: screens.length,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return screens[index];
                }),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          DotsIndicator(
            position: currentPage.toInt(),
            dotsCount: screens.length,
            decorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              activeColor: Colors.black,
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ],
      ),
    );
  }
}
