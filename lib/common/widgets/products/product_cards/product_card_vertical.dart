import 'package:e_commerceapp/common/styles/shadow.dart';
import 'package:e_commerceapp/common/widgets/custome_shaps/custome_containers/rounded_container.dart';
import 'package:e_commerceapp/common/widgets/icons/circulaire_icon.dart';
import 'package:e_commerceapp/common/widgets/images/E_rounded_image.dart';
import 'package:e_commerceapp/common/widgets/texts/brand_title_text_with_verification_icon.dart';
import 'package:e_commerceapp/common/widgets/texts/product_price.dart';
import 'package:e_commerceapp/common/widgets/texts/product_title.dart';
import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/image_strings.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EProductCardVertical extends StatelessWidget {
  const EProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return GestureDetector(
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [EShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(ESizes.productImageRadius),
            color: dark ? EColors.darkGrey : EColors.white),
        child: Column(children: [
          ERoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(ESizes.sm),
            backgroundColor: dark ? EColors.dark : EColors.light,
            child: Stack(
              children: [
                //image
                const ERoundedImage(
                  imageUrl: EImages.productImage1,
                  applyImageRadius: true,
                ),
                //sale tage
                Positioned(
                  top: 10,
                  child: ERoundedContainer(
                      radius: ESizes.sm,
                      backgroundColor: EColors.secondary,
                      padding: const EdgeInsets.symmetric(
                          horizontal: ESizes.sm, vertical: ESizes.xs),
                      child: Text('30%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: EColors.black))),
                ),
                //heart icon
                const Positioned(
                  top: 0,
                  right: 0,
                  child: CircularIcon(icon: Iconsax.heart5, color: Colors.red),
                )
              ],
            ),
          ),

          const SizedBox(height: ESizes.spaceBtwItems / 2),

          //Product Details

          const Padding(
            padding: EdgeInsets.only(left: ESizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EProductTitleText(
                  title: 'Green Nike Air Shoes',
                  smallSize: true,
                ),
                SizedBox(height: ESizes.spaceBtwItems / 2),
                Row(
                  children: [EBrandTitleTextWithVerifiedIcon(title: 'Nike')],
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //price
              const Padding(
                padding: EdgeInsets.only(left: ESizes.sm),
                child: EProductPriceText(
                  price: '29000.99',
                ),
              ),
              //Add To Cart Button
              Container(
                decoration: const BoxDecoration(
                  color: EColors.dark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(ESizes.cardRadiusMd),
                    bottomRight: Radius.circular(ESizes.productImageRadius),
                  ),
                ),
                child: const SizedBox(
                  height: ESizes.iconLg * 1.2,
                  width: ESizes.iconLg * 1.2,
                  child: Center(
                    child: Icon(
                      Iconsax.add,
                      color: EColors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
