import 'package:flutter/material.dart';

import 'package:scroll_to_index/scroll_to_index.dart';

import 'package:goodcoffee/utils/sizing_info.dart';
import 'package:goodcoffee/values/responsive_app.dart';
import 'package:goodcoffee/widgets/components/carousel.dart';
import 'package:goodcoffee/widgets/mobile_components/menu_tab.dart';
import 'package:goodcoffee/widgets/mobile_components/shop_app_bar.dart';
import 'package:goodcoffee/widgets/mobile_components/shop_drawer.dart';
import 'package:goodcoffee/widgets/web_components/body/section_list.dart';
import 'package:goodcoffee/widgets/web_components/footer/footer.dart';
import 'package:goodcoffee/widgets/web_components/header/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double scrollPosition = 0;
  final Axis scrollDirection = Axis.vertical;
  late final AutoScrollController scrollController;

  @override
  void initState() {
    super.initState();

    scrollController = AutoScrollController(
      viewportBoundaryGetter: () => Rect.fromLTRB(
        0,
        0,
        0,
        MediaQuery.of(context).padding.bottom,
      ),
      axis: scrollDirection,
    );

    scrollController.addListener(scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    final ResponsiveApp responsiveApp = ResponsiveApp(context);
    final double opacity = scrollPosition < responsiveApp.height
        ? scrollPosition / responsiveApp.height
        : 1;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: isMobileAndTablet(context)
          ? ShopAppBar(
              opacity: opacity,
            )
          : Header(
              opacity: opacity,
            ),
      drawer: isMobileAndTablet(context)
          ? const ShopDrawer()
          : null,
      body: ListView(
        scrollDirection: scrollDirection,
        controller: scrollController,
        children: [
          const Carousel(),
          isMobileAndTablet(context)
              ? const MenuTab()
              : SectionList(
                  scrollController: scrollController,
                ),
          isMobileAndTablet(context)
              ? const SizedBox.shrink()
              : const Footer()
        ],
      ),
      floatingActionButton: Visibility(
        visible: scrollPosition > responsiveApp.height,
        child: FloatingActionButton(
          onPressed: () => scrollController.scrollToIndex(0),
          child: const Icon(Icons.arrow_upward),
        ),
      ),
    );
  }

  void scrollListener() {
    setState(() {
      scrollPosition = scrollController.position.pixels;
    });
  }
}
