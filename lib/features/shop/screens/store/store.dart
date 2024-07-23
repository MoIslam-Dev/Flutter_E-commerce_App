import 'package:e_commerceapp/common/widgets/appbar/appbar.dart';
import 'package:e_commerceapp/common/widgets/custome_shaps/custome_containers/rounded_container.dart';
import 'package:e_commerceapp/common/widgets/custome_shaps/custome_containers/search_container.dart';
import 'package:e_commerceapp/common/widgets/images/E_circulair_image.dart';
import 'package:e_commerceapp/common/widgets/layout/grid_layout.dart';
import 'package:e_commerceapp/common/widgets/products/product_carts/cart_counter_icon.dart';
import 'package:e_commerceapp/common/widgets/texts/brand_title_text.dart';
import 'package:e_commerceapp/common/widgets/texts/brand_title_text_with_verification_icon.dart';
import 'package:e_commerceapp/common/widgets/texts/section_heading.dart';
import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/enums.dart';
import 'package:e_commerceapp/utils/constants/image_strings.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [ECartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: EHelperFunctions.isDarkMode(context)
                    ? EColors.black
                    : EColors.white,
                expandedHeight: 448,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(ESizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      //search bar
                      SearchContainer(
                        text: 'Search',
                        showborder: true,
                        showbackground: true,
                        padding: EdgeInsets.symmetric(horizontal: 0),
                      ),
                      SizedBox(
                        height: ESizes.spaceBtwSections,
                      ),
                      //featurs brand
                      SectionHeading(
                        title: 'featured brands',
                      ),
                      SizedBox(height: ESizes.spaceBtwItems / 1.5),
                      //featured brands
                      EGridLayout(
                        mainAxisExtent: 80,
                          itemCount: 4,
                          itemBuilder: (_, index) => GestureDetector(
                            child: ERoundedContainer(
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
                                              EHelperFunctions.isDarkMode(context)
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
                          ))
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
