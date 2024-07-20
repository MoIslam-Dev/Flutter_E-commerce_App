

import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerceapp/common/widgets/custome_shaps/custome_containers/circulaire_container.dart';
import 'package:e_commerceapp/common/widgets/images/E_rounded_image.dart';
import 'package:e_commerceapp/features/shop/controllers/home_controller.dart';
import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key, required this.banners,
  });

  final  List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(items: 
        banners.map((url)=>ERoundedImage(imageUrl: url)).toList()
        , options: CarouselOptions(viewportFraction: 1,
        onPageChanged: (index, _) =>controller.UpdatePageIndicator(index) ,
        ),
        
        
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        Obx(
          ()=> Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0;i< banners.length; i++)
                 CirculaireContainer(
                  height: 4,
                  width: 20,
                  color: (controller.CarauselCurrentIndex.value ==i)
                  ? EColors.primary:
                  EColors.grey.withOpacity(0.5),
                  
                ),
            ],
          ),
        )
      ],
    );
  }
}
