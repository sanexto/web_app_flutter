import 'package:flutter/material.dart';

import 'package:goodcoffee/values/responsive_app.dart';

class Menu extends StatelessWidget {
  final String title, image;
  final GestureTapCallback onPress;

  const Menu({
    super.key,
    required this.title,
    required this.image,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    final ResponsiveApp responsiveApp = ResponsiveApp(context);

    return Padding(
      padding: responsiveApp.edgeInsetsApp.hrzSmallEdgeInsets,
      child: SizedBox(
        width: responsiveApp.menuContainerWidth,
        height: responsiveApp.menuContainerHeight,
        child: Material(
          clipBehavior: Clip.hardEdge,
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.all(Radius.circular(
            responsiveApp.menuRadiusWidth,
          )),
          child: InkWell(
            onTap: onPress,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  width: responsiveApp.menuImageWidth,
                  height: responsiveApp.menuImageHeight,
                  fit: BoxFit.scaleDown,
                ),
                Text(
                  title,
                  style: Theme.of(context).primaryTextTheme.bodyLarge!,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
