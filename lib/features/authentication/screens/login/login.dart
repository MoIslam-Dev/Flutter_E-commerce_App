import 'package:e_commerceapp/common/styles/spacing_style.dart';
import 'package:e_commerceapp/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerceapp/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: Espacing_Style.PaddingWithSpaceAppBarHeight,
          child: Column(
            children: [
              const ELoginHeader(),
              const ELoginForm(),
              EFormDivider(dividerText: ETexts.orSignInWith.capitalize!),
              const SizedBox(height: ESizes.spaceBtwSections),
              const ESocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}