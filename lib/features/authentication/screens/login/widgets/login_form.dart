import 'package:e_commerceapp/features/shop/screens/bottom_navigation_bar/navigation_menu.dart';
import 'package:e_commerceapp/features/authentication/screens/password_forget_reset/forget_password.dart';
import 'package:e_commerceapp/features/authentication/screens/signup/signup.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ELoginForm extends StatelessWidget {
  const ELoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ESizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: ETexts.email,
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: ETexts.password,
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(ETexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {
              Get.to(() => const ForgetPasswordScreen());
                  },
                  child: const Text(
                    ETexts.forgetPassword,
                  ),
                ),
              ],
            ),
            const SizedBox(height: ESizes.spaceBtwSections),
            ElevatedButton(
              onPressed: () {
             Get.to(() => const NavigationMenu());
              },
              child: const Center(
                child: Text(
                  ETexts.signIn,
                ),
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwItems),
            OutlinedButton(
              onPressed: () {
                Get.to(() => const SignupScreen());
              },
              child: const Center(
                child: Text(
                  ETexts.createAccount,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}