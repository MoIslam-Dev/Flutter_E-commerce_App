

import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ERoundedImage extends StatelessWidget {
  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  const ERoundedImage({
    super.key,
    required this.imageUrl,
    this.padding,
    this.border,
    this.onPressed,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.isNetworkImage = false,
    this.borderRadius = ESizes.md,
    this.applyImageRadius = true,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) ,
            fit: fit,
          ),
        ),
      ),
    );
  }
}