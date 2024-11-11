import 'package:flutter/material.dart';

import 'package:scroll_to_index/scroll_to_index.dart';

import 'package:goodcoffee/models/menu.dart';
import 'package:goodcoffee/values/responsive_app.dart';
import 'package:goodcoffee/values/string_app.dart';
import 'package:goodcoffee/widgets/web_components/body/menu.dart';
import 'package:goodcoffee/widgets/web_components/body/section.dart';

class MenuSection extends StatelessWidget {
  final AutoScrollController scrollController;

  const MenuSection({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    final ResponsiveApp responsiveApp = ResponsiveApp(context);

    return Column(
      children: [
        Section(
          title: sectionMenuTitleStr,
          subtitle: sectionMenuSubtitleStr,
          color: Colors.black,
        ),
        Padding(
          padding: responsiveApp.edgeInsetsApp.onlyExLargeTopEdgeInsets,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              menu.length,
              (index) => Menu(
                title: menu[index].title,
                image: menu[index].image,
                onPress: () => scrollToIndex(index + 1),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void scrollToIndex(int index) {
    scrollController.scrollToIndex(index);
  }
}
