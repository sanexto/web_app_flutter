import 'package:flutter/material.dart';

import 'package:goodcoffee/models/section.dart';
import 'package:goodcoffee/widgets/components/product_list.dart';
import 'package:goodcoffee/widgets/web_components/body/section.dart';

class ProductSection extends StatelessWidget {
  final SectionData section;

  const ProductSection({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Section(
          title: section.title,
          subtitle: section.subtitle,
          color: section.color,
        ),
        ProductList(
          list: section.list,
        ),
      ],
    );
  }
}
