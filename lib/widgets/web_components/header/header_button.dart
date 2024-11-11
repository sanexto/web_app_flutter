import 'package:flutter/material.dart';

import 'package:goodcoffee/values/responsive_app.dart';

class HeaderButton extends StatefulWidget {
  final String title;
  final bool line;

  const HeaderButton({
    super.key,
    required this.title,
    this.line = true
  });

  @override
  State<HeaderButton> createState() => _HeaderButtonState();
}

class _HeaderButtonState extends State<HeaderButton> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    final ResponsiveApp responsiveApp = ResponsiveApp(context);

    return Padding(
      padding: EdgeInsets.only(
        top: 5 + responsiveApp.lineHznButtonHeight,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onHover: (value) {
            setState(() {
              _isHover = value;
            });
          },
          onTap: () {},
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  color: _isHover
                      ? Colors.white
                      : Colors.white70,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Visibility(
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                visible: widget.line
                    ? _isHover
                    : widget.line,
                child: Container(
                  width: responsiveApp.lineHznButtonWidth,
                  height: responsiveApp.lineHznButtonHeight,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
