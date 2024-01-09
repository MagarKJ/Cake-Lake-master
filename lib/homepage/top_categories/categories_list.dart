import 'package:cakelake/utils/pathing.dart';
import 'package:flutter/material.dart';

class ProductTop {
  final String name1;
  final String name2;
  final String image;

  ProductTop({
    required this.name1,
    required this.name2,
    required this.image,
  });
}

class CategoryList extends StatelessWidget {
  static List<ProductTop> wantProduct() {
    return [
      ProductTop(
        name1: 'Blood',
        name2: 'Orange',
        image: category1,
      ),
      ProductTop(
        name1: 'White',
        name2: 'Cake',
        image: category2,
      ),
      ProductTop(
        name1: 'Chocolate',
        name2: 'Cake',
        image: category3,
      ),
      ProductTop(
        name1: 'Panforte',
        name2: 'Cake',
        image: category4,
      ),
    ];
  }

  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
