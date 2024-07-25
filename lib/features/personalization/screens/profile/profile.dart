 import 'package:e_commerceapp/common/widgets/images/E_circulair_image.dart';
import 'package:e_commerceapp/utils/constants/image_strings.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Profile'),) ,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ECirculairImage(image: EImages.user),
              SizedBox(height: ESizes.spaceBtwItems,),
              Text('change profile screen',style: Theme.of(context).textTheme.labelMedium,)
            ],
          ),
        ),

      ),

    );
  }
}