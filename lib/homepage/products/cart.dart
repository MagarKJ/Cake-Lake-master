import 'package:cakelake/homepage/products/cart_controller.dart';
import 'package:cakelake/homepage/products/products_list.dart';
import 'package:cakelake/payments/payment.dart';
import 'package:cakelake/widgets/appbar.dart';
import 'package:cakelake/widgets/button.dart';
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

  void moveToPayment() {
    List<Product> selectedProducts = _cartController.cartItems
        .where((product) => counters[product]! > 0)
        .toList();
    if (selectedProducts.isNotEmpty) {
      Get.to(() => PaymentMethod(
            selectedProducts: selectedProducts,
          ));
    } else {
      // Handle the case where no products are selected before navigating.
      // You can show a message or take appropriate action.
      print('No products selected for payment.');
    }
  }

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
      appBar: const AppHeader(
        title1: 'Cart',
        icon: Icons.arrow_back_ios_new_outlined,
      ),
      body: Column(
        children: [
          Expanded(
            // Wrap the ListView.builder with Expanded
            child: Obx(
              // The body is wrapped in an Obx widget, which ensures that the UI is rebuilt whenever the observed state in CartController changes.
              () => Container(
                width: Get.width * 0.96,
                // color: Colors.red,
                child: Stack(
                  children: [
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: _cartController.cartItems.length,
                      itemBuilder: (context, index) {
                        final product = _cartController.cartItems[index];
                        return Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  //  color: Colors.blue,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey.shade300,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: ListTile(
                                title: Container(
                                  //  color: Colors.amber,
                                  height: Get.height * 0.15,
                                  width: Get.width * 0.9,
                                  child: Row(
                                    children: [
                                      Image.asset(product.image,
                                          fit: BoxFit.cover),
                                      Container(
                                        // color: Colors.red,
                                        width: Get.width * 0.5,
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
                                            SizedBox(
                                              height: Get.height * 0.01,
                                            ),
                                            StarRating(
                                              size: Get.height * 0.025,
                                              initialRating: 12,
                                            ),
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
                            Positioned(
                              top: Get.height * 0.01,
                              right: Get.width * 0.01,
                              child: Container(
                                height: Get.height * 0.04,
                                decoration: BoxDecoration(
                                  border: Border.all(color: myRed),
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    _cartController.removeFromCart(product);
                                    print('ok');
                                  },
                                  icon: Icon(
                                    Icons.delete_outline,
                                    size: Get.height * 0.02,
                                  ),
                                  color: myRed,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          CustomButton(
            buttonText: 'CHECKOUT',
            onPressed: () {
              Get.to(() => PaymentMethod(
                    selectedProducts: _cartController.cartItems
                        .where((product) => counters[product]! > 0)
                        .toList(),
                  ));
            },
            width: Get.width * 0.4,
            height: Get.height * 0.06,
            fontSize: 12,
            backGroundColor: myBrownColor,
          ),
        ],
      ),
    );
  }
}
