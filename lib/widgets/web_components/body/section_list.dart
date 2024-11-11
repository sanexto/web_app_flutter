import 'package:flutter/material.dart';

import 'package:scroll_to_index/scroll_to_index.dart';

import 'package:goodcoffee/models/section.dart';
import 'package:goodcoffee/values/responsive_app.dart';
import 'package:goodcoffee/widgets/web_components/body/menu_section.dart';
import 'package:goodcoffee/widgets/web_components/body/product_section.dart';

class SectionList extends StatelessWidget {
  final AutoScrollController scrollController;

  const SectionList({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    final ResponsiveApp responsiveApp = ResponsiveApp(context);

    return Column(
      children: List.generate(
        sections.length + 1,
        (index) => Padding(
          padding: responsiveApp.edgeInsetsApp.allExLargeEdgeInsets,
          child: addScroll(
            index,
            index == 0
                ? MenuSection(
                    scrollController: scrollController,
                  )
                : ProductSection(
                    section: sections[index - 1],
                  ),
          ),
        ),
      ),
    );
  }

  Widget addScroll(int index, Widget child) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: scrollController,
      index: index,
      child: child,
    );
  }
}
