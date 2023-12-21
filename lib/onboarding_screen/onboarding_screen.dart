import 'package:cakelake/onboarding_screen/choose_product.dart';
import 'package:cakelake/onboarding_screen/get_order.dart';
import 'package:cakelake/onboarding_screen/make_payment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final pageController = PageController(viewportFraction: 0.8, keepPage: true);

  int currentPage = 0;

  dynamic screens = [
    const ChooseProduct(),
    const MakePayment(),
    const GetOrder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.85,
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                children: [screens[currentPage]],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: Get.width * 0.25,
                  child: TextButton(
                    onPressed: () {
                      if (currentPage == 1 || currentPage == 2) {
                        pageController.previousPage(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.bounceIn,
                        );
                        setState(() {
                          currentPage = currentPage - 1;
                        });
                      }
                    },
                    child: currentPage == 0
                        ? const Text(
                            '',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          )
                        : const Text(
                            'Prev',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                  ),
                ),
                SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: const WormEffect(
                        activeDotColor: Colors.black,
                        dotHeight: 10,
                        dotWidth: 10)),
                SizedBox(
                  width: Get.width * 0.25,
                  child: TextButton(
                    onPressed: () {
                      if (currentPage == 0 || currentPage == 1) {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.bounceIn,
                        );
                        setState(() {
                          currentPage = currentPage + 1;
                        });
                      }
                      if (currentPage == 2) {
                        // navigate
                      }
                    },
                    child: currentPage == 2
                        ? const Text(
                            'Start',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        : const Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
