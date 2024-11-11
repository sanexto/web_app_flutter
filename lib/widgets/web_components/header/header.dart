import 'package:flutter/material.dart';

import 'package:goodcoffee/values/responsive_app.dart';
import 'package:goodcoffee/values/string_app.dart';
import 'package:goodcoffee/widgets/web_components/header/header_button.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final double opacity;

  const Header({super.key, required this.opacity});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final ResponsiveApp responsiveApp = ResponsiveApp(context);
    
    return Container(
      color: Theme.of(context).primaryColor.withOpacity(opacity),
      child: Padding(
        padding: responsiveApp.edgeInsetsApp.hrzMediumEdgeInsets,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              shopStr,
              style: TextStyle(
                color: Colors.blueGrey[100],
                fontSize: responsiveApp.headlineSmall,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                letterSpacing: responsiveApp.letterSpacingHeaderWidth,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: responsiveApp.barSpace1Width,
                  ),
                  HeaderButton(
                    title: aboutUsStr,
                  ),
                  SizedBox(
                    width: responsiveApp.barSpace1Width,
                  ),
                  HeaderButton(
                    title: locationStr,
                  ),
                ],
              ),
            ),
            HeaderButton(
              title: loginStr,
              line: false,
            ),
            SizedBox(
              width: responsiveApp.barSpace2Width,
            ),
            IconButton(
              icon: const Icon(Icons.local_grocery_store_outlined),
              iconSize: 20,
              hoverColor: Colors.transparent,
              padding: EdgeInsets.zero,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
