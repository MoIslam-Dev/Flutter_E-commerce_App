import 'package:e_commerceapp/features/authentication/screens/password_forget_reset/reset_password.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //headings
              Text(
                ETexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              Text(
                ETexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
               
              ),
                const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
              //textfeild
    TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: ETexts.email,
              ),
            ),  const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
              //submit button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: ()=>{Get.to(const ResetPasswordScreen())}, child: const Text(
                  ETexts.submit,
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
