import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ERoundedContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const ERoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = ESizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.borderColor = EColors.borderPrimary,
    this.backgroundColor = EColors.white,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder
            ? Border.all(
                color: borderColor,
              )
            : null,
      ),
      child: child,
    );
  }
}
