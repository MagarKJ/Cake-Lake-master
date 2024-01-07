import 'package:cakelake/utils/pathing.dart';
import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final String image;
  final String amount;
  final double price;
  final String? description;
  final String? expandedImage;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.amount,
    required this.price,
    this.description,
    this.expandedImage,
  });
}

class MyProductLIst extends StatelessWidget {
  static List<Product> getProducts() {
    return [
      Product(
        id: 1,
        name: 'Red Velvet & Cream Cheese',
        image: 'assets/image/new_arrival/Product1.jpg',
        expandedImage: mainimage,
        amount: '500g',
        price: 1500,
        description:
            'Red Velvet: A decadent cocoa-infused cake with a vibrant red color, perfectly complemented by the creamy goodness of a velvety cream cheese frosting.',
      ),
      Product(
        id: 2,
        name: 'Red Velvet & Cream Cheese',
        image: 'assets/image/new_arrival/Product2.jpg',
        expandedImage: 'assets/image/products/mainproducts.jpg',
        amount: '500g',
        price: 1200,
        description:
            'Red Velvet: A decadent cocoa-infused cake with a vibrant red color, perfectly complemented by the creamy goodness of a velvety cream cheese frosting.',
      ),
      Product(
        id: 3,
        name: 'Red Velvet & Cream Cheese',
        image: 'assets/image/new_arrival/Product3.jpg',
        expandedImage: 'assets/image/products/mainproducts.jpg',
        amount: '500g',
        price: 1200,
        description:
            'Red Velvet: A decadent cocoa-infused cake with a vibrant red color, perfectly complemented by the creamy goodness of a velvety cream cheese frosting.',
      ),
      Product(
        id: 4,
        name: 'Red Velvet & Cream Cheese',
        image: 'assets/image/new_arrival/Product1.jpg',
        expandedImage: 'assets/image/products/mainproducts.jpg',
        amount: '500g',
        price: 1200,
        description:
            'Red Velvet: A decadent cocoa-infused cake with a vibrant red color, perfectly complemented by the creamy goodness of a velvety cream cheese frosting.',
      ),
      Product(
        id: 5,
        name: 'Red Velvet & Cream Cheese',
        image: 'assets/image/new_arrival/Product2.jpg',
        expandedImage: 'assets/image/products/mainproducts.jpg',
        amount: '500g',
        price: 1200,
        description:
            'Red Velvet: A decadent cocoa-infused cake with a vibrant red color, perfectly complemented by the creamy goodness of a velvety cream cheese frosting.',
      ),
      Product(
        id: 6,
        name: 'Red Velvet & Cream Cheese',
        image: 'assets/image/new_arrival/Product3.jpg',
        expandedImage: 'assets/image/products/mainproducts.jpg',
        amount: '500g',
        price: 1200,
        description:
            'Red Velvet: A decadent cocoa-infused cake with a vibrant red color, perfectly complemented by the creamy goodness of a velvety cream cheese frosting.',
      ),
    ];
  }

  const MyProductLIst({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
