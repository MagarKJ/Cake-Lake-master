import 'package:cakelake/authorization/sign_up.dart';
import 'package:cakelake/onboarding_screen/choose_product.dart';
import 'package:cakelake/onboarding_screen/get_order.dart';
import 'package:cakelake/onboarding_screen/make_payment.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final _pageController = PageController(viewportFraction: 0.8, keepPage: true);

  int currentPage = 0;

  bool startButtonPressed = false;

  dynamic screens = [
    const ChooseProduct(),
    const MakePayment(),
    const GetOrder(),
  ];

  @override
  void dispose() {
    // Reset the flag when the screen is disposed (e.g., when navigating back)
    startButtonPressed = false;
    _pageController.dispose();
    super.dispose();
  }

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
                controller: _pageController,
                children: [screens[currentPage]],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: Get.width * 0.25,
                  child: currentPage == 0
                      ? Container()
                      : TextButton(
                          onPressed: () {
                            if (currentPage == 1 || currentPage == 2) {
                              _pageController.previousPage(
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.bounceIn,
                              );
                              setState(() {
                                currentPage = currentPage - 1;
                                startButtonPressed = false;
                              });
                            }
                          },
                          child: const Text(
                            'Prev',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                ),
                DotsIndicator(
                  position: currentPage,
                  dotsCount: 3,
                  decorator: DotsDecorator(
                    size: const Size.square(10.0),
                    activeSize: const Size(20.0, 10.0),
                    activeColor: Colors.black,
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.25,
                  child: TextButton(
                    onPressed: () {
                      if (currentPage == 0 || currentPage == 1) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.bounceIn,
                        );
                        setState(() {
                          currentPage = currentPage + 1;
                        });
                      }
                      if (currentPage == 2 && startButtonPressed) {
                        Get.to(() => const CreateAccount());
                      } else if (currentPage == 2) {
                        setState(() {
                          startButtonPressed = true;
                        });
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
