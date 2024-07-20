import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EGridLayout extends StatelessWidget {
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext context, int index) itemBuilder;

  const EGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: mainAxisExtent,
          mainAxisSpacing: ESizes.gridViewSpacing,
          crossAxisSpacing: ESizes.gridViewSpacing),
      itemBuilder: itemBuilder,
    );
  }
}