import 'package:e_commerceapp/common/widgets/layout/grid_layout.dart';
import 'package:e_commerceapp/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerceapp/common/widgets/texts/section_heading.dart';
import 'package:e_commerceapp/features/shop/screens/store/widgets/brand_showcase.dart';
import 'package:e_commerceapp/utils/constants/image_strings.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:[
         Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          //brands
          children: [
            const BrandShowCase(
              images: [
                EImages.productImage1,
                EImages.productImage2,
                EImages.productImage3,
              ],
            ),
                   const BrandShowCase(
              images: [
                EImages.productImage1,
                EImages.productImage2,
                EImages.productImage3,
              ],
            ),
              const SizedBox(height: ESizes.spaceBtwItems),
            //products
            const SectionHeading(title: 'You may like'),
            const SizedBox(height: ESizes.spaceBtwItems),
      
            EGridLayout(
                itemCount: 4, itemBuilder: (_, index) => const EProductCardVertical()),
                const SizedBox(height: ESizes.spaceBtwSections),
          ],
        ),
      ),
      ]
    );
  }
}
