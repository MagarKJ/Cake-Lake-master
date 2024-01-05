import 'dart:developer';

import 'package:cakelake/homepage/products/cart_controller.dart';
import 'package:cakelake/homepage/products/products_list.dart';
import 'package:cakelake/widgets/appbar.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:cakelake/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  Map<Product, int> counters = {};
  //counters map, where each product has its own counter. This ensures that each product's quantity is tracked independently.
  late CartController _cartController;

  @override
  void initState() {
    super.initState();
    _cartController = Get.find();
    // Initialize counters for each product
    for (Product product in _cartController.cartItems) {
      counters[product] = 1;
    }
  }

  void increment(Product product) {
    setState(() {
      counters[product] = (counters[product] ?? 0) + 1;
      //counters[product] ?? 0 retrieves the current quantity for the given product. If the counter is null (which shouldn't happen due to the initialization in point 2), it defaults to 0.
    });
  }

  void decrement(Product product) {
    if (counters[product] != null && counters[product]! > 1) {
      setState(() {
        counters[product] = counters[product]! - 1;
        // checks if the current quantity is not null and greater than 1 before decrementing.
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppHeader(
            title1: 'Cart',
            icon: Icons.arrow_back_ios_new_outlined,
          ),
          Expanded(
            // Wrap the ListView.builder with Expanded
            child: Obx(
              // The body is wrapped in an Obx widget, which ensures that the UI is rebuilt whenever the observed state in CartController changes.
              () => Container(
                width: Get.width * 0.9,
                // color: Colors.red,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: _cartController.cartItems.length,
                  itemBuilder: (context, index) {
                    final product = _cartController.cartItems[index];
                    return Stack(
                      children: [
                        Positioned(
                          top: Get.height * 0.01,
                          right: Get.width * 0.001,
                          child: Container(
                            height: Get.height * 0.04,
                            decoration: BoxDecoration(
                              border: Border.all(color: myRed),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {
                                log(product.toString());
                                print("print vayo");
                                increment(product);
                              },
                              icon: Icon(
                                Icons.delete_outline,
                                size: Get.height * 0.02,
                              ),
                              color: myRed,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              //   color: Colors.red,
                              border: Border.all(
                                width: 1,
                                color: Colors.grey.shade300,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: ListTile(
                            title: Container(
                              //color: Colors.amber,
                              height: Get.height * 0.15,
                              width: Get.width * 0.9,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Image.asset(product.image,
                                          fit: BoxFit.cover)),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          ' ${product.name} ( ${product.amount} ) ',
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: myBrownColor),
                                        ),
                                        StarRating(size: Get.height * 0.025, initialRating: 12,),
                                        SizedBox(
                                          height: Get.height * 0.01,
                                        ),
                                        Text(
                                          '${product.price * counters[product]!}',
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: myRed),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Add more details as needed
                          ),
                        ),
                        Positioned(
                          bottom: Get.height * 0.01,
                          right: Get.width * 0.01,
                          child: Row(
                            children: [
                              Container(
                                height: Get.height * 0.04,
                                decoration: BoxDecoration(
                                  color: Colors.red.shade100,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    decrement(product);
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    color: myRed,
                                    size: Get.height * 0.02,
                                  ),
                                ),
                              ),
                              Text(
                                '${counters[product]}',
                                style: GoogleFonts.poppins(
                                    color: myDarkGrey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25),
                              ),
                              Container(
                                height: Get.height * 0.04,
                                decoration: BoxDecoration(
                                  color: myRed,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    increment(product);
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: Get.height * 0.02,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
