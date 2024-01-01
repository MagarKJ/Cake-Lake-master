import 'package:flutter/material.dart';

class ProductTop {
  final String name;
  final String image;

  ProductTop({
    required this.name,
    required this.image,
  });
}

class CategoryList extends StatelessWidget {
  static List<ProductTop> wantProduct() {
    return [
      ProductTop(
        name: 'Blood Orange',
        image: 'assets/image/top_categories/topc1.jpg',
      ),
      ProductTop(
        name: 'White Cake',
        image: 'assets/image/top_categories/topc2.jpg',
      ),
      ProductTop(
        name: 'Chocolate cake',
        image: 'assets/image/top_categories/topc3.jpg',
      ),
      ProductTop(
        name: 'Panforte Cake',
        image: 'assets/image/top_categories/top4.jpg',
      ),
    ];
  }

  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
