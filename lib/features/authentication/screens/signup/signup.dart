
import 'package:e_commerceapp/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerceapp/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerceapp/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/constants/text_string.dart';
import 'package:flutter/material.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Text
              Text(
                ETexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              // Form
              SignupForm(),
              //divider
              EFormDivider(dividerText: ETexts.orSignUpWith),
              SizedBox(
                height: ESizes.spaceBtwSections,
              ),
              //social button
              ESocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
