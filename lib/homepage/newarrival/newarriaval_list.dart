import 'package:cakelake/widgets/colors.dart';
import 'package:cakelake/widgets/hotsale_logo.dart';
import 'package:cakelake/widgets/star_rating.dart';
import 'package:flutter/material.dart';
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

class NewArrivalList extends StatelessWidget {
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

  NewArrivalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      height: Get.height * 0.32,
      width: Get.width * 0.94,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          // itemCount: (products.length / 2)
          itemCount: 3,
          itemBuilder: (context, index) {
            return ImageItem(
              product: products[index],
            );
          }),
    );
  }
}

class ImageItem extends StatefulWidget {
  final Product product;

  const ImageItem({super.key, required this.product});

  @override
  State<ImageItem> createState() => _ImageItemState();
}

class _ImageItemState extends State<ImageItem> {
  double initalRating = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue,
      height: Get.height * 0.32,
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: Get.width * 0.43,
                child: Image.asset(
                  widget.product.image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: Get.width * 0.275,
                ),
                child: const Sales(),
              ),
            ],
          ),
          SizedBox(
            height: Get.height * 0.015,
          ),
          Container(
            height: Get.height * 0.05,
            width: Get.width * 0.42,
            // color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    //  color: Colors.red,
                    height: Get.height * 0.04,
                    width: Get.width * 0.28,
                    child: Text(
                      '${widget.product.name} ( ${widget.product.amount} )',
                      style: GoogleFonts.poppins(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  //color: Colors.orange,
                  height: Get.height * 0.04,
                  width: Get.width * 0.12,
                  child: Text(
                    'Rs.${widget.product.price}',
                    style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: myRed),
                  ),
                )
              ],
            ),
          ),
          const StarRating(),
        ],
      ),
    );
  }
}
