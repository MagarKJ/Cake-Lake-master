import 'package:flutter/material.dart';

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

class MyProductLIst extends StatelessWidget {
  static List<Product> getProducts() {
    return [
      Product(
        name: 'Red Velvet & Cream Cheese',
        image: 'assets/image/new_arrival/Product1.jpg',
        amount: 500,
        price: 1500,
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
  }

  const MyProductLIst({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
