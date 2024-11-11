import 'package:flutter/material.dart';

import 'package:goodcoffee/values/responsive_app.dart';

class FooterColumn extends StatelessWidget {
  final String heading, s1, s2, s3;

  const FooterColumn({
    super.key,
    required this.heading,
    required this.s1,
    required this.s2,
    required this.s3,
  });

  @override
  Widget build(BuildContext context) {
    final ResponsiveApp responsiveApp = ResponsiveApp(context);

    return Padding(
      padding: responsiveApp.edgeInsetsApp.vrtLargeEdgeInsets,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: responsiveApp.edgeInsetsApp.vrtSmallEdgeInsets,
            child: Text(
              heading,
              style: Theme.of(context).primaryTextTheme.headlineSmall!.copyWith(
                color: Colors.blueGrey[300],
              ),
            ),
          ),
          createS(context, responsiveApp, s1),
          createS(context, responsiveApp, s2),
          createS(context, responsiveApp, s3),
        ],
      ),
    );
  }

  Widget createS(BuildContext context, ResponsiveApp responsiveApp, String s) {
    return Padding(
      padding: responsiveApp.edgeInsetsApp.vrtSmallEdgeInsets,
      child: Text(
        s,
        style: Theme.of(context).primaryTextTheme.bodyLarge!.copyWith(
          color: Colors.blueGrey[100],
        ),
      ),
    );
  }
}
