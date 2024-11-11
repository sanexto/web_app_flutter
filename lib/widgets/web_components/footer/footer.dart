import 'package:flutter/material.dart';

import 'package:goodcoffee/values/responsive_app.dart';
import 'package:goodcoffee/values/string_app.dart';
import 'package:goodcoffee/widgets/web_components/footer/footer_column.dart';
import 'package:goodcoffee/widgets/web_components/footer/info_text.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final ResponsiveApp responsiveApp = ResponsiveApp(context);

    return Container(
      color: Theme.of(context).primaryColor,
      padding: responsiveApp.edgeInsetsApp.allMediumEdgeInsets,
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FooterColumn(
                  heading: aboutStr,
                  s1: contactUsStr,
                  s2: aboutUsStr,
                  s3: knowUsStr,
                ),
                FooterColumn(
                  heading: helpStr,
                  s1: paymentStr,
                  s2: cancellationStr,
                  s3: faqStr,
                ),
                FooterColumn(
                  heading: socialStr,
                  s1: xStr,
                  s2: facebookStr,
                  s3: instagramStr,
                ),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.secondary,
                  width: responsiveApp.dividerVtlWidth,
                  indent: 16.0,
                  endIndent: 16.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoText(
                      title: emailStr,
                      text: contactEmailStr,
                    ),
                    InfoText(
                      title: addressStr,
                      text: contactAddressStr,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: responsiveApp.edgeInsetsApp.vrtSmallEdgeInsets,
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
              height: responsiveApp.dividerHznHeight,
            ),
          ),
          Padding(
            padding: responsiveApp.edgeInsetsApp.vrtSmallEdgeInsets,
            child: Text(
              copyrightStr,
              style: Theme.of(context).primaryTextTheme.bodyLarge!.copyWith(
                color: Colors.blueGrey[100],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
