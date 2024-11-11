import 'package:flutter/material.dart';

import 'package:goodcoffee/models/product.dart';
import 'package:goodcoffee/values/string_app.dart';

class SectionData {
  final String title;
  final String subtitle;
  final Color color;
  final List<ProductData> list;

  SectionData({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.list
  });
}

final List<SectionData> sections = [
  SectionData(
    title: coffeesStr,
    subtitle: 'Café 100% puro',
    color: Colors.yellow,
    list: coffeesList,
  ),
  SectionData(
    title: drinksStr,
    subtitle: 'Bebidas de todos los sabores',
    color: Colors.red,
    list: drinksList,
  ),
  SectionData(
    title: cakesStr,
    subtitle: 'Pasteles deliciosos',
    color: Colors.blue,
    list: cakesList,
  ),
  SectionData(
    title: sandwichesStr,
    subtitle: 'Come algo ligero',
    color: Colors.purpleAccent,
    list: sandwichesList,
  ),
];
