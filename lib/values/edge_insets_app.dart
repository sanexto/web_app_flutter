import 'package:flutter/material.dart';

import 'package:goodcoffee/values/responsive_app.dart';

class EdgeInsetsApp {
  // All
  late final EdgeInsets allSmallEdgeInsets;
  late final EdgeInsets allMediumEdgeInsets;
  late final EdgeInsets allLargeEdgeInsets;
  late final EdgeInsets allExLargeEdgeInsets;

  // Vertical
  late final EdgeInsets vrtSmallEdgeInsets;
  late final EdgeInsets vrtMediumEdgeInsets;
  late final EdgeInsets vrtLargeEdgeInsets;
  late final EdgeInsets vrtExLargeEdgeInsets;

  // Horizontal
  late final EdgeInsets hrzSmallEdgeInsets;
  late final EdgeInsets hrzMediumEdgeInsets;
  late final EdgeInsets hrzLargeEdgeInsets;

  // Only left, top, right and bottom (small)
  late final EdgeInsets onlySmallLeftEdgeInsets;
  late final EdgeInsets onlySmallTopEdgeInsets;
  late final EdgeInsets onlySmallRightEdgeInsets;
  late final EdgeInsets onlySmallBottomEdgeInsets;

  // Only left, top, right and bottom (medium)
  late final EdgeInsets onlyMediumLeftEdgeInsets;
  late final EdgeInsets onlyMediumTopEdgeInsets;
  late final EdgeInsets onlyMediumRightEdgeInsets;
  late final EdgeInsets onlyMediumBottomEdgeInsets;

  // Only left, top, right and bottom (large)
  late final EdgeInsets onlyLargeLeftEdgeInsets;
  late final EdgeInsets onlyLargeTopEdgeInsets;
  late final EdgeInsets onlyLargeRightEdgeInsets;
  late final EdgeInsets onlyLargeBottomEdgeInsets;

  // Only top (extra large)
  late final EdgeInsets onlyExLargeTopEdgeInsets;

  final ResponsiveApp _responsiveApp;

  EdgeInsetsApp(this._responsiveApp) {
    // Padding
    final double smallWidthEdgeInsets = _responsiveApp.setWidth(5);
    final double smallHeightEdgeInsets = _responsiveApp.setHeight(5);

    final double mediumWidthEdgeInsets = _responsiveApp.setWidth(10);
    final double mediumHeightEdgeInsets = _responsiveApp.setHeight(10);

    final double largeWidthEdgeInsets = _responsiveApp.setWidth(20);
    final double largeHeightEdgeInsets = _responsiveApp.setHeight(20);

    final double exLargeWidthEdgeInsets = _responsiveApp.setWidth(40);
    final double exLargeHeightEdgeInsets = _responsiveApp.setHeight(40);

    // All
    allSmallEdgeInsets = EdgeInsets.symmetric(
      horizontal: smallWidthEdgeInsets,
      vertical: smallHeightEdgeInsets,
    );
    allMediumEdgeInsets = EdgeInsets.symmetric(
      horizontal: mediumWidthEdgeInsets,
      vertical: mediumHeightEdgeInsets,
    );
    allLargeEdgeInsets = EdgeInsets.symmetric(
      horizontal: largeWidthEdgeInsets,
      vertical: largeHeightEdgeInsets,
    );
    allExLargeEdgeInsets = EdgeInsets.symmetric(
      horizontal: exLargeWidthEdgeInsets,
      vertical: exLargeHeightEdgeInsets,
    );

    // Vertical
    vrtSmallEdgeInsets = EdgeInsets.symmetric(
      vertical: smallHeightEdgeInsets,
    );
    vrtMediumEdgeInsets = EdgeInsets.symmetric(
      vertical: mediumHeightEdgeInsets,
    );
    vrtLargeEdgeInsets = EdgeInsets.symmetric(
      vertical: largeHeightEdgeInsets,
    );
    vrtExLargeEdgeInsets = EdgeInsets.symmetric(
      vertical: exLargeHeightEdgeInsets,
    );

    // Horizontal
    hrzSmallEdgeInsets = EdgeInsets.symmetric(
      horizontal: smallWidthEdgeInsets,
    );
    hrzMediumEdgeInsets = EdgeInsets.symmetric(
      horizontal: mediumWidthEdgeInsets,
    );
    hrzLargeEdgeInsets = EdgeInsets.symmetric(
      horizontal: largeWidthEdgeInsets,
    );

    // Only left, top, right and bottom (small)
    onlySmallLeftEdgeInsets = EdgeInsets.only(
      left: smallWidthEdgeInsets,
    );
    onlySmallTopEdgeInsets = EdgeInsets.only(
      top: smallHeightEdgeInsets,
    );
    onlySmallRightEdgeInsets = EdgeInsets.only(
      right: smallWidthEdgeInsets,
    );
    onlySmallBottomEdgeInsets = EdgeInsets.only(
      bottom: smallHeightEdgeInsets,
    );

    // Only left, top, right and bottom (medium)
    onlyMediumLeftEdgeInsets = EdgeInsets.only(
      left: mediumWidthEdgeInsets,
    );
    onlyMediumTopEdgeInsets = EdgeInsets.only(
      top: mediumHeightEdgeInsets,
    );
    onlyMediumRightEdgeInsets = EdgeInsets.only(
      right: mediumWidthEdgeInsets,
    );
    onlyMediumBottomEdgeInsets = EdgeInsets.only(
      bottom: mediumHeightEdgeInsets,
    );

    // Only left, top, right and bottom (large)
    onlyLargeLeftEdgeInsets = EdgeInsets.only(
      left: largeWidthEdgeInsets,
    );
    onlyLargeTopEdgeInsets = EdgeInsets.only(
      top: largeHeightEdgeInsets,
    );
    onlyLargeRightEdgeInsets = EdgeInsets.only(
      right: largeWidthEdgeInsets,
    );
    onlyLargeBottomEdgeInsets = EdgeInsets.only(
      bottom: largeHeightEdgeInsets,
    );

    // Only top (extra large)
    onlyExLargeTopEdgeInsets = EdgeInsets.only(
      top: exLargeHeightEdgeInsets,
    );
  }
}
