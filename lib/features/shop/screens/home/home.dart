import 'package:e_commerceapp/common/widgets/custome_shaps/custome_containers/primary_header_container.dart';
import 'package:e_commerceapp/common/widgets/custome_shaps/custome_containers/search_container.dart';
import 'package:e_commerceapp/common/widgets/texts/section_heading.dart';
import 'package:e_commerceapp/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerceapp/features/shop/screens/home/widgets/home_categories_list.dart';
import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  //AppBar
                  HomeAppbar(),
                  //Searchbar
                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),
                  SearchContainer(
                    icon: Iconsax.search_normal,
                    text: 'search in store',
                    showbackground: true,
                    showborder: true,
                  ),

                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

                  //Section Heading

                  Padding(
                    padding: EdgeInsets.only(left: ESizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          headingText: 'Populaire Categories',
                          showTextButton: false,
                          buttonText: 'hello',
                          textColor: EColors.white,
                        ),

                        SizedBox(
                          height: ESizes.spaceBtwItems,
                        ),
                        //categories list view
                        CategoryList(),
                      ],
                    ),
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
