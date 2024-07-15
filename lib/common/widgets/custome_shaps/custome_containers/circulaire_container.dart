

import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CirculaireContainer extends StatelessWidget {
  const CirculaireContainer({
    super.key,   this.height =400,   this.width =400,   this.padding =0,   this.radius =400,   this.color =EColors.white, this.child,
  });
  final double height;
  final double width;
  final double padding;
  final double radius;
  final Color color;
  final Widget ? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      child: child,
    );
  }
}