import 'package:e_commerceapp/common/widgets/login_signup/term_conditions.dart';
import 'package:e_commerceapp/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: ETexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: ESizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ETexts.email,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: ESizes.spaceBtwInputFields,
          ),
          //UserName
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ETexts.username,
              prefixIcon: Icon(Iconsax.user),
            ),
          ),
          const SizedBox(
            height: ESizes.spaceBtwInputFields,
          ),
          //Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ETexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: ESizes.spaceBtwInputFields,
          ),
          //phone
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ETexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: ESizes.spaceBtwInputFields,
          ),
          //password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: ETexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: ESizes.spaceBtwSections,
          ),

          //tERM cONDITION cHECKBOX
          const ETerm_Conditions(),
          const SizedBox(
            height: ESizes.spaceBtwSections,
          ),
          //create account button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(const VerifyEmailScreen());
              },
              child: const Text(
                ETexts.createAccount,
              ),
            ),
          ),
          const SizedBox(
            height: ESizes.spaceBtwSections,
          ),
        ],
      ),
    );
  }
}
