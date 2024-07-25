import 'package:e_commerceapp/common/styles/spacing_style.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/constants/text_string.dart';
import 'package:e_commerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class SuccessVerificationScreen extends StatelessWidget {
  const SuccessVerificationScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

final String image, title, subtitle;
final VoidCallback onPressed; 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: Espacing_Style.PaddingWithSpaceAppBarHeight,
        
        child: Column(
             children: [
              //Image
              Image(image: AssetImage(image),width: EHelperFunctions.screenWidth() *0.6,),

              const SizedBox(height: ESizes.spaceBtwSections,),
              // title and subtitle 
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ESizes.spaceBtwItems,),
            Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
              ),
               const SizedBox(height: ESizes.spaceBtwSections,),

               //button
                  SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: onPressed, child: const Text(
                  ETexts.eContinue
                )),
              ),

             ]
        ),
  
        ),
      ),
    );
  }
}