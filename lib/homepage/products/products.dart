import 'package:cakelake/homepage/products/products_list.dart';
import 'package:cakelake/widgets/button.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:cakelake/widgets/seeall.dart';
import 'package:cakelake/widgets/star_rating.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatefulWidget {
  final Product product;
  double initalRating = 0;

  ProductDetails({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int counter = 1;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    if (counter > 1) {
      setState(() {
        counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    //color: Colors.red,
                    height: Get.height * 0.4,
                    width: double.infinity,
                    child: Image.asset('assets/image/products/mainproducts.jpg',
                        fit: BoxFit.cover),
                  ),
                  Container(
                    //color: Colors.red,
                    height: Get.height * 0.07,
                    width: Get.width * 0.88,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: myBrownColor,
                            ),
                          ),
                        ),
                        Container(
                          //color: Colors.blue,
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_outline,
                                    color: myBrownColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: Get.width * 0.03,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.share_outlined,
                                    color: myBrownColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              DotsIndicator(
                position: 2,
                dotsCount: 3,
                decorator: DotsDecorator(
                  size: const Size.square(10.0),
                  activeSize: const Size(20.0, 10.0),
                  activeColor: Colors.black,
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
              Container(
                //color: Colors.red,
                height: Get.height * 0.14,
                width: Get.width * 0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/image/products/p2.jpg'),
                    Image.asset('assets/image/products/p1.jpg'),
                    Image.asset('assets/image/products/p3.jpg'),
                  ],
                ),
              ),
              Container(
                // color: Colors.blue,
                height: Get.height * 0.05,
                width: Get.width * 0.9,
                child: Text(
                  '${widget.product.name} ( ${widget.product.amount} )',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                //color: Colors.orange,
                height: Get.height * 0.12,
                width: Get.width * 0.9,
                child: Text(
                  'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quas maiores quibusdam excepturi commodi tempore ad, reprehenderit quidem dolor dolorem tempora quisquam eos sapiente neque possimus eius culpa nesciunt perspiciatis ipsam!',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: myDarkGrey,
                  ),
                ),
              ),
              Container(
                // color: Colors.orange,
                height: Get.height * 0.04,
                width: Get.width * 0.9,
                child: Text(
                  'Rs.${widget.product.price}',
                  style: GoogleFonts.poppins(
                      fontSize: 13, fontWeight: FontWeight.w600, color: myRed),
                ),
              ),
              Container(
                // color: Colors.blue,
                height: Get.height * 0.06,
                width: Get.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      buttonText: 'Add Review',
                      onPressed: () {},
                      width: Get.width * 0.06,
                      height: Get.height * 0.01,
                      icon: Icons.edit_square,
                      fontSize: 12,
                    ),
                    StarRating(initialRating: widget.initalRating)
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Container(
                // color: Colors.blue,
                height: Get.height * 0.03,
                width: Get.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Reviews',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    const SeeAll(),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Container(
                // color: Colors.blue,
                height: Get.height * 0.15,
                width: Get.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/image/image1.jpg'),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Eric Thapa',
                                style: GoogleFonts.poppins(
                                    color: myBrownColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.timer_outlined,
                                    color: myGrey,
                                  ),
                                  Text(
                                    '13 sep, 2023',
                                    style: GoogleFonts.poppins(color: myGrey),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: StarRating(
                            initialRating: widget.initalRating,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Text(
                      'Tastes so good',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: myBrownColor),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: myGrey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //color: Colors.blue,
                height: Get.height * 0.1,
                width: Get.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.red.shade100),
                          child: IconButton(
                            onPressed: () {
                              decrement();
                            },
                            icon: Icon(
                              Icons.remove,
                              color: Colors.red,
                              size: Get.height * 0.03,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.02,
                        ),
                        Text(
                          '$counter',
                          style: GoogleFonts.poppins(
                              color: myDarkGrey,
                              fontWeight: FontWeight.w500,
                              fontSize: 27),
                        ),
                        SizedBox(
                          width: Get.width * 0.02,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.red),
                          child: IconButton(
                            onPressed: () {
                              increment();
                            },
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: Get.height * 0.03,
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomButton(
                      buttonText: 'ADD TO CART',
                      onPressed: () {},
                      width: Get.width * 0.05,
                      height: Get.height * 0.012,
                      icon: Icons.shopping_cart_outlined,
                      fontSize: 13,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
