import 'package:flutter/material.dart';

import 'package:goodcoffee/values/responsive_app.dart';

class Section extends StatelessWidget {
  final String title, subtitle;
  final Color color;

  const Section({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final ResponsiveApp responsiveApp = ResponsiveApp(context);

    return Row(
      children: [
        Container(
          width: responsiveApp.sectionWidth,
          height: responsiveApp.sectionHeight,
          margin: responsiveApp.edgeInsetsApp.onlyMediumRightEdgeInsets,
          padding: responsiveApp.edgeInsetsApp.onlyLargeBottomEdgeInsets,
          color: Colors.black,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: color,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subtitle,
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyLarge!
                  .copyWith(
                    color: Colors.blueGrey[100],
                  ),
            ),
            Text(
              title,
              style: Theme.of(context)
                  .primaryTextTheme
                  .headlineLarge!
                  .copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
