import 'package:flutter/material.dart';

import 'package:goodcoffee/pages/home_page.dart';
import 'package:goodcoffee/values/responsive_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Good Coffee',
      builder: (BuildContext context, Widget? child) {
        final ResponsiveApp responsiveApp = ResponsiveApp(context);

        return Theme(
          data: ThemeData(
            scaffoldBackgroundColor: Colors.blueGrey[900],
            cardColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedWidgetColor: Colors.blueGrey[300],
            colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: Colors.black87,
              secondary: Colors.blueGrey,
            ),
            appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
            ),
            tabBarTheme: TabBarTheme(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.blueGrey[300],
              indicatorColor: Colors.white,
            ),
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            primaryTextTheme: getTextTheme(responsiveApp),
            textTheme: getTextTheme(responsiveApp),
          ),
          child: const HomePage(),
        );
      },
      debugShowCheckedModeBanner: false,
    );
  }

  TextTheme getTextTheme(ResponsiveApp responsiveApp) {
    return TextTheme(
      headlineSmall: TextStyle(
        color: Colors.white,
        fontSize: responsiveApp.headlineSmall,
      ),
      headlineMedium: TextStyle(
        color: Colors.white,
        fontSize: responsiveApp.headlineMedium,
      ),
      headlineLarge: TextStyle(
        color: Colors.white,
        fontSize: responsiveApp.headlineLarge,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: responsiveApp.bodyLarge,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: responsiveApp.bodyLarge,
      ),
    );
  }
}
