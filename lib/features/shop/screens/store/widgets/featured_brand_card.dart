

import 'package:e_commerceapp/common/widgets/custome_shaps/custome_containers/rounded_container.dart';
import 'package:e_commerceapp/common/widgets/images/E_circulair_image.dart';
import 'package:e_commerceapp/common/widgets/texts/brand_title_text_with_verification_icon.dart';
import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/enums.dart';
import 'package:e_commerceapp/utils/constants/image_strings.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FeaturedBrandCard extends StatelessWidget {
  const FeaturedBrandCard({
    super.key,  this.showBorder =true,
  });
final bool showBorder;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
          child: ERoundedContainer(
            showBorder: showBorder,
            padding: EdgeInsets.all(ESizes.sm),
            backgroundColor:
                EHelperFunctions.isDarkMode(context)
                    ? EColors.black
                    : EColors.light,
            child: Row(
              children: [
                //Icon
                Flexible(
                  child: ECirculairImage(
                    image: EImages.clothIcon,
                    backgroundColor: Colors.transparent,
                    overlayColor:
                        EHelperFunctions.isDarkMode(
                                context)
                            ? EColors.white
                            : EColors.black,
                  ),
                ),
                SizedBox(width: ESizes.spaceBtwItems / 2),
                //Text
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      EBrandTitleTextWithVerifiedIcon(
                        title: 'Nike',
                        brandTextSize: TextSizes.medium,
                      ),
                      Text(
                        '2650 Product',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
  }
}
