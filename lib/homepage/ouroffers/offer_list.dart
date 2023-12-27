import 'package:cakelake/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Product {
  final String name;
  final String image;
  final int amount;
  final double price;
  final double rating;

  Product({
    required this.name,
    required this.image,
    required this.amount,
    required this.price,
    required this.rating,
  });
}

class OurOffferList extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Red Velvet & Cream Cheese',
      image: 'assets/image/new_arrival/Product1.jpg',
      amount: 500,
      price: 1200,
      rating: 4.5,
    ),
    Product(
      name: 'Red Velvet & Cream Cheese',
      image: 'assets/image/new_arrival/Product2.jpg',
      amount: 300,
      price: 1200,
      rating: 3,
    ),
    Product(
      name: 'Red Velvet & Cream Cheese',
      image: 'assets/image/new_arrival/Product3.jpg',
      amount: 400,
      price: 1200,
      rating: 5,
    ),
  ];

  OurOffferList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black,
      height: Get.height * 0.4,
      width: Get.width * 0.94,
      child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: Get.height * 0.01),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, offset: Offset(2, 2))
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ImageItem(
                  product: products[index],
                ),
              ),
            );
          }),
    );
  }
}

class ImageItem extends StatelessWidget {
  final Product product;

  const ImageItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: Get.width * 0.3,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color: Colors.red,
                  height: Get.height * 0.049,
                  width: Get.width * 0.5,
                  child: Text(
                    '${product.name} ( ${product.amount} )',
                    style: GoogleFonts.poppins(
                        fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  //color: Colors.blue,
                  height: Get.height * 0.03,
                  width: Get.width * 0.2,
                  child: Text(
                    'Rs.${product.price}',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: myRed),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      //  color: Colors.red,
                      height: Get.height * 0.02,
                      width: Get.width * 0.27,
                      child: RatingBar.builder(
                        initialRating: product.rating,
                        maxRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: Get.height * 0.02,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          // Handle the rating update if needed
                        },
                      ),
                    ),
                    SizedBox(
                      // color: Colors.blue,
                      height: Get.height * 0.02,
                      child: Text(
                        '${product.rating} Rating',
                        style: GoogleFonts.poppins(
                            fontSize: 11, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
