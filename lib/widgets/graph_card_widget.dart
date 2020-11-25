import 'package:flutter/material.dart';

class GraphCardWidget extends StatelessWidget {
  final String title;
  final Color activeColor, fontColor;
  final int activeIndex;
  final Function onTap;
  final double width;
  final double fontSize;
  GraphCardWidget({
    Key key,
    this.title,
    this.activeColor,
    this.fontColor,
    this.width,
    this.onTap,
    this.fontSize,
    this.activeIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
          color: activeColor,
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
              color: fontColor,
            ),
          ),
        ),
      ),
    );
  }
}
