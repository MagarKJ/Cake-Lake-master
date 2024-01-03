import 'package:cakelake/homepage/products/cart_model.dart';
import 'package:cakelake/utils/pathing.dart';
import 'package:flutter/material.dart';

class Shop extends  ChangeNotifier{
  final List<Product> _productMenu = [
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

//customer cart
  List<Product> _cart = [];

//getter methods
  List<Product> get productMenu => _productMenu;
  List<Product> get cart => _cart;

  //add to cart
  void addToCart(Product productItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(productItem);
      notifyListeners();
    }
  }

  // remove from cart

    void removeFromCart(Product product) {
      _cart.remove(product);
      notifyListeners();
    }
}
