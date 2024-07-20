import 'package:flutter/material.dart';

class EProductPriceText extends StatelessWidget {
  final String currencyString, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  const EProductPriceText({
    super.key,
    this.currencyString = "\DA",
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      currencyString + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium?.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge?.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}