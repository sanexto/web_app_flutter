import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:goodcoffee/models/carousel.dart';
import 'package:goodcoffee/utils/sizing_info.dart';
import 'package:goodcoffee/values/responsive_app.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final ResponsiveApp responsiveApp = ResponsiveApp(context);
    final List<Widget> imageSliders = generateImageTiles(responsiveApp);

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final double height = constraints.maxWidth * 400 / 1244;

            return CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                autoPlay: true,
                height: height,
                viewportFraction: 1.0,
                scrollPhysics: isMobileAndTablet(context)
                    ? const PageScrollPhysics()
                    : const NeverScrollableScrollPhysics(),
                onPageChanged: (index, reason) {
                  setState(() {
                    for (int i = 0; i < carousel.length; i++) {
                      carousel[i].isSelected = i == index;
                    }
                  });
                },
              ),
              carouselController: _carouselController,
            );
          },
        ),
        isMobileAndTablet(context)
            ? const SizedBox.shrink()
            : Padding(
                padding: responsiveApp.edgeInsetsApp.onlyLargeBottomEdgeInsets,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    carousel.length,
                    (index) => InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        _carouselController.animateToPage(index);
                      },
                      child: Container(
                        width: responsiveApp.carouselCircleContainerWidth,
                        height: responsiveApp.carouselCircleContainerHeight,
                        margin: responsiveApp.edgeInsetsApp.allSmallEdgeInsets,
                        decoration: BoxDecoration(
                          color: carousel[index].isSelected
                              ? Colors.white
                              : Colors.blueGrey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ],
    );
  }

  List<Widget> generateImageTiles(ResponsiveApp responsiveApp) {
    return carousel.map((element) => Stack(
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              responsiveApp.carouselRadiusWidth,
            ),
            child: Image.asset(
              element.image,
              color: Colors.black87,
              colorBlendMode: BlendMode.srcOver,
            ),
          ),
        ),
        Center(
          child: Text(
            element.title,
            style: TextStyle(
              fontSize: responsiveApp.headlineMedium,
              fontFamily: 'Electrolize',
              letterSpacing: responsiveApp.letterSpacingCarouselWidth,
            ),
          ),
        ),
      ],
    )).toList();
  }
}
