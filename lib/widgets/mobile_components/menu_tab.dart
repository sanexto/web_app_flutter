import 'package:flutter/material.dart';

import 'package:goodcoffee/models/menu.dart';
import 'package:goodcoffee/models/product.dart';
import 'package:goodcoffee/values/responsive_app.dart';
import 'package:goodcoffee/widgets/components/product_list.dart';

class MenuTab extends StatefulWidget {
  const MenuTab({super.key});

  @override
  State<MenuTab> createState() => _MenuTabState();
}

class _MenuTabState extends State<MenuTab> with TickerProviderStateMixin {
  late final TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: _selectedIndex,
      length: menu.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ResponsiveApp responsiveApp = ResponsiveApp(context);

    return SizedBox(
      height: responsiveApp.menuTabContainerHeight,
      child: Padding(
        padding: responsiveApp.edgeInsetsApp.allLargeEdgeInsets,
        child: Column(
          children: [
            TabBar(
              controller: _tabController,
              tabs: List.generate(menu.length, (index) => createTab(
                context,
                responsiveApp,
                index,
                menu[index],
              )),
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ProductList(
                    list: coffeesList,
                  ),
                  ProductList(
                    list: drinksList,
                  ),
                  ProductList(
                    list: cakesList,
                  ),
                  ProductList(
                    list: sandwichesList,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget createTab(
      BuildContext context,
      ResponsiveApp responsiveApp,
      int index,
      MenuData menu,
  ) {
    return Tab(
      text: menu.title,
      icon: Image.asset(
        menu.image,
        color: _selectedIndex == index
            ? Theme.of(context).iconTheme.color
            : Theme.of(context).unselectedWidgetColor,
        height: responsiveApp.tabImageHeight,
      ),
    );
  }
}
