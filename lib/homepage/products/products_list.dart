
import 'package:cakelake/utils/pathing.dart';
import 'package:flutter/material.dart';

class Product {
  final String name;
  final String image;
  final int amount;
  final double price;
  final String? description;
  final String? expandedImage;

  Product({
    required this.name,
    required this.image,
    required this.amount,
    required this.price,
    this.description,
    this.expandedImage,
  });
  // //customer cart
  // List<Product> _cart = [];

  // //geter method
  // List<Product> get cart => _cart;
  // //List<Product> get getproduct => getProducts();

  // //add to cart
  // void addToCart(Product productItem, int quantity) {
  //   for (int i = 0; i < quantity; i++) {
  //     _cart.add(productItem);
  //     notifyListeners();
  //   }
  //   //remove from cart

  //   void removeFromCart(Product product) {
  //     _cart.remove(product);
  //     notifyListeners();
  //   }
  // }
}

class MyProductLIst extends StatelessWidget {
  static List<Product> getProducts() {
    return [
      Product(
        name: 'Red Velvet & Cream Cheese',
        image: 'assets/image/new_arrival/Product1.jpg',
        expandedImage: mainimage,
        amount: 500,
        price: 1500,
        description:
            'Red Velvet: A decadent cocoa-infused cake with a vibrant red color, perfectly complemented by the creamy goodness of a velvety cream cheese frosting.',
      ),
      Product(
        name: 'Red Velvet & Cream Cheese',
        image: 'assets/image/new_arrival/Product2.jpg',
        expandedImage: 'assets/image/products/mainproducts.jpg',
        amount: 300,
        price: 1200,
        description:
            'Red Velvet: A decadent cocoa-infused cake with a vibrant red color, perfectly complemented by the creamy goodness of a velvety cream cheese frosting.',
      ),
      Product(
        name: 'Red Velvet & Cream Cheese',
        image: 'assets/image/new_arrival/Product3.jpg',
        expandedImage: 'assets/image/products/mainproducts.jpg',
        amount: 400,
        price: 1200,
        description:
            'Red Velvet: A decadent cocoa-infused cake with a vibrant red color, perfectly complemented by the creamy goodness of a velvety cream cheese frosting.',
      ),
      Product(
        name: 'Red Velvet & Cream Cheese',
        image: 'assets/image/new_arrival/Product1.jpg',
        expandedImage: 'assets/image/products/mainproducts.jpg',
        amount: 500,
        price: 1200,
        description:
            'Red Velvet: A decadent cocoa-infused cake with a vibrant red color, perfectly complemented by the creamy goodness of a velvety cream cheese frosting.',
      ),
      Product(
        name: 'Red Velvet & Cream Cheese',
        image: 'assets/image/new_arrival/Product2.jpg',
        expandedImage: 'assets/image/products/mainproducts.jpg',
        amount: 300,
        price: 1200,
        description:
            'Red Velvet: A decadent cocoa-infused cake with a vibrant red color, perfectly complemented by the creamy goodness of a velvety cream cheese frosting.',
      ),
      Product(
        name: 'Red Velvet & Cream Cheese',
        image: 'assets/image/new_arrival/Product3.jpg',
        expandedImage: 'assets/image/products/mainproducts.jpg',
        amount: 400,
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
