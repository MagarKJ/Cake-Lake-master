import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product {
  final String name;
  final String image;
  final int amount;
  final double price;

  Product({
    required this.name,
    required this.image,
    required this.amount,
    required this.price,
  });
}

class HotSales extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Red Velvet & CreamCheese',
      image: 'assets/image/new_arrival/Product1.jpg',
      amount: 500,
      price: 1200,
    ),
    Product(
      name: 'Red Velvet & CreamCheese',
      image: 'assets/image/new_arrival/Product2.jpg',
      amount: 300,
      price: 1200,
    ),
    Product(
      name: 'Red Velvet & CreamCheese',
      image: 'assets/image/new_arrival/Product3.jpg',
      amount: 400,
      price: 1200,
    ),
  ];

  HotSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: Get.height * 0.2,
      width: Get.width * 0.85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ImageItem(
              product: products[index],
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
    return Row(
      children: [
        SizedBox(
          height: Get.height * 0.2,
          width: Get.width * 0.4,
          child: Image.asset(
            product.image,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
