import 'package:flutter/material.dart';

import 'package:goodcoffee/values/responsive_app.dart';
import 'package:goodcoffee/values/string_app.dart';

class ShopAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double opacity;

  const ShopAppBar({super.key, required this.opacity});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final ResponsiveApp responsiveApp = ResponsiveApp(context);

    return AppBar(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(opacity),
      centerTitle: true,
      elevation: 0,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            hoverColor: Colors.transparent,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
      title: Text(
        shopStr,
        style: TextStyle(
          color: Colors.blueGrey[100],
          fontSize: responsiveApp.headlineSmall,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          letterSpacing: responsiveApp.letterSpacingHeaderWidth,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.local_grocery_store_outlined),
          hoverColor: Colors.transparent,
          onPressed: () {},
        ),
      ],
    );
  }
}
