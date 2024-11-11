import 'package:flutter/material.dart';

import 'package:goodcoffee/models/product.dart';
import 'package:goodcoffee/widgets/components/product.dart';

class ProductList extends StatelessWidget {
  final List<ProductData> list;

  const ProductList({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Product(
          product: list[index],
          onPress: () {},
        );
      },
    );
  }
}
