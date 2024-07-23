

import 'package:e_commerceapp/common/widgets/appbar/appbar.dart';
import 'package:e_commerceapp/common/widgets/products/product_carts/cart_counter_icon.dart';
import 'package:flutter/material.dart';

class StoreAppBar extends StatelessWidget {
  const StoreAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EAppBar(
      title: 
      Text('Store',style: Theme.of(context).textTheme.headlineMedium,),
      
      actions: [
        ECartCounterIcon(onPressed: (){})
      ],
    );
  }
}