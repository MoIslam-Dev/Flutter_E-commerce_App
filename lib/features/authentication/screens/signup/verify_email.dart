import 'package:e_commerceapp/common/widgets/success_verification/success_verification_screen.dart';
import 'package:e_commerceapp/features/authentication/screens/login/login.dart';
import 'package:e_commerceapp/utils/constants/image_strings.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/constants/text_string.dart';
import 'package:e_commerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.offAll(()=>const LoginScreen()), icon:const Icon(Iconsax.close_square5) )
        ],
      ),
      body:   SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
         // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Image
              Image(image: const AssetImage(EImages.deliveredEmailIllustration),width: EHelperFunctions.screenWidth() *0.6,),

              const SizedBox(height: ESizes.spaceBtwSections,),
              // title and subtitle 
              Text(
                ETexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ESizes.spaceBtwItems,),
              Text(
                "Mohamed.djouablia@univ-constantine2.dz",
                style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
              ),
              const SizedBox(height: ESizes.spaceBtwItems,),
            Text(
                ETexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
              ),
                      const SizedBox(height: ESizes.spaceBtwSections,),
              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){Get.to(SuccessVerificationScreen(image: EImages.staticSuccessIllustration,title: ETexts.yourAccountCreatedTitle,subtitle: ETexts.yourAccountCreatedSubTitle,onPressed: ()=>Get.to(const LoginScreen()),));}, child: const Text(
                  ETexts.eContinue
                )),
              ),
              const SizedBox(height: ESizes.spaceBtwItems,),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: (){}, child: const Text(
                  ETexts.resendEmail
                )),
              ),
             
              
              //social button
           
            ],
          ),
        ),
      ),
    );
  }
}