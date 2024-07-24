import 'package:e_commerceapp/common/widgets/appbar/appbar.dart';
import 'package:e_commerceapp/common/widgets/appbar/tabbar.dart';
import 'package:e_commerceapp/common/widgets/custome_shaps/custome_containers/search_container.dart';
import 'package:e_commerceapp/common/widgets/layout/grid_layout.dart';
import 'package:e_commerceapp/common/widgets/products/product_carts/cart_counter_icon.dart';
import 'package:e_commerceapp/common/widgets/texts/section_heading.dart';
import 'package:e_commerceapp/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerceapp/features/shop/screens/store/widgets/featured_brand_card.dart';
import 'package:e_commerceapp/utils/constants/colors.dart';

import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                              itemBuilder: (_, index) => FeaturedBrandCard())
                        ],
                      ),
                    ),
                    //Tabs List
                    bottom: const ETapBar(
                      tabs: [
                        Tab(text: 'Sports'),
                        Tab(text: 'Clothing'),
                        Tab(text: 'Forniture'),
                        Tab(text: 'Electronics'),
                        Tab(text: 'Cosmetics'),
                      ],
                    ))
              ];
            },
            body: TabBarView(
              children: [
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
              ],
            )),
      ),
    );
  }
}
