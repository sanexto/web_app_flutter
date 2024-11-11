import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'package:goodcoffee/models/product.dart';
import 'package:goodcoffee/values/responsive_app.dart';

class Product extends StatelessWidget {
  final ProductData product;
  final GestureTapCallback onPress;

  const Product({
    super.key,
    required this.product,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    final NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'es_AR',
      symbol: '\$',
      decimalDigits: 0,
      customPattern: '¤ ',
    );
    final ResponsiveApp responsiveApp = ResponsiveApp(context);

    return SizedBox(
      height: responsiveApp.productContainerHeight,
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: responsiveApp.edgeInsetsApp.hrzLargeEdgeInsets,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(product.title.toUpperCase()),
              Text(currencyFormatter.format(product.price)),
            ],
          ),
        ),
      ),
    );
  }
}
