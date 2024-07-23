import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class ECirculairImage extends StatelessWidget {
  final BoxFit fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  const ECirculairImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
    this.fit = BoxFit.cover,
    this.padding = ESizes.sm,
    this.isNetworkImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor ??
              (EHelperFunctions.isDarkMode(context)
                  ? EColors.black
                  : EColors.white),
          borderRadius: BorderRadius.circular(100)),
      child: Image(
        fit: fit,
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) ,
        color: overlayColor,
      ),
    );
  }
}