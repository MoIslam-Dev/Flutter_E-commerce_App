
import 'package:e_commerceapp/common/widgets/appbar/appbar.dart';
import 'package:e_commerceapp/common/widgets/icons/circulaire_icon.dart';
import 'package:e_commerceapp/common/widgets/layout/grid_layout.dart';
import 'package:e_commerceapp/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: EAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(icon: Icon(Iconsax.add), onPressed: () {  },)
        //CircularIcon(icon: Iconsax.add,)
        ],
        


      ),
      body: SingleChildScrollView(
        child: Padding(padding: 
        EdgeInsets.all(ESizes.defaultSpace),
      
      child: Column(
        children: [
          EGridLayout(itemCount: 4, itemBuilder: (_, index) => EProductCardVertical(
          )
          ),
        ],
      )
      ),
      ),
    );
  }
}