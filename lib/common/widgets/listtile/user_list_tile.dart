

import 'package:e_commerceapp/common/widgets/images/E_circulair_image.dart';
import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EUserProfileTile extends StatelessWidget {
  const EUserProfileTile({
    super.key, this.onPressed,
  });
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const ECirculairImage(
        image: EImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('Djouablia Mohamed ',style: 
      Theme.of(context).textTheme.headlineSmall!.apply(color: EColors.white),
      
      ),
      subtitle:Text('Djouablia@gmail.com',style: 
      Theme.of(context).textTheme.bodyMedium!.apply(color: EColors.white) ,
      ),
      trailing: IconButton(onPressed: onPressed, icon:const Icon(Iconsax.edit,color: EColors.white,) ),
      );
  }
}
