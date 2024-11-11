import 'package:flutter/material.dart';

import 'package:goodcoffee/utils/sizing_info.dart';
import 'package:goodcoffee/values/edge_insets_app.dart';

class ResponsiveApp {
  late final MediaQueryData _mediaQueryData;
  late final double _scaleFactor;
  late final double _textScaleFactor;
  late final EdgeInsetsApp edgeInsetsApp;

  ResponsiveApp(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    _scaleFactor = isMobile(context) ? 1 : isTablet(context) ? 1.1 : 1.3;
    _textScaleFactor = _mediaQueryData.textScaleFactor;
    edgeInsetsApp = EdgeInsetsApp(this);
  }

  // Container
  double get menuContainerWidth => setWidth(100);
  double get menuContainerHeight => setHeight(100);
  double get productContainerHeight => setHeight(60);
  double get carouselCircleContainerWidth => setWidth(10);
  double get carouselCircleContainerHeight => setHeight(10);
  double get menuTabContainerHeight => setHeight(400);
  double get sectionWidth => setWidth(8);
  double get sectionHeight => setHeight(50);

  // Radius
  double get menuRadiusWidth => setWidth(8);
  double get carouselRadiusWidth => setWidth(4);

  // Images
  double get menuImageWidth => setWidth(50);
  double get menuImageHeight => setHeight(50);
  double get tabImageHeight => setHeight(30);

  double get drawerWidth => setWidth(252);

  // Divider and Line
  double get dividerVtlWidth => setWidth(1);
  double get dividerHznHeight => setHeight(1);
  double get lineHznButtonWidth => setWidth(20);
  double get lineHznButtonHeight => setHeight(2);

  // Spaces
  double get barSpace1Width => setWidth(60);
  double get barSpace2Width => setWidth(10);

  // Text Size
  double get bodyLarge => setSp(12);
  double get headlineSmall => setSp(15);
  double get headlineMedium => setSp(30);
  double get headlineLarge => setSp(40);

  // Spacing
  double get letterSpacingCarouselWidth => setWidth(10);
  double get letterSpacingHeaderWidth => setWidth(3);

  double get width => _mediaQueryData.size.width;
  double get height => _mediaQueryData.size.height;

  double setWidth(double width) => width * _scaleFactor;
  double setHeight(double height) => height * _scaleFactor;
  double setSp(double fontSize) => fontSize * _textScaleFactor;
}
