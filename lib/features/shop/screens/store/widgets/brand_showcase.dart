
import 'package:e_commerceapp/common/widgets/custome_shaps/custome_containers/rounded_container.dart';
import 'package:e_commerceapp/features/shop/screens/store/widgets/featured_brand_card.dart';
import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key, required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return ERoundedContainer(
      backgroundColor: Colors.transparent,
      showBorder: true,
      borderColor: EColors.darkGrey,
      margin:
          const EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      padding: const EdgeInsets.all(ESizes.md),
      child: Column(
        children: [
          const FeaturedBrandCard(
            showBorder: false,
          ),
          const SizedBox(height: ESizes.spaceBtwItems),
          //3 brands
          Row(children: 
            images.map((image)=>brandTopProductsWidget(context, image)).toList()
          )
        ]
      ),
    );
  }
}
 Widget brandTopProductsWidget( context, String productImage) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Expanded(
      child: ERoundedContainer(
            padding: const EdgeInsets.all(ESizes.md),
            margin: const EdgeInsets.only(right: ESizes.sm),
            height: 100,
            backgroundColor: dark ? EColors.darkerGrey : EColors.light,
            child: Image(
  
              image: AssetImage(
                productImage
                
              ),
              fit: BoxFit.contain,
            ),
      ),
    );
  }