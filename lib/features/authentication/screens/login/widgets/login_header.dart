import 'package:e_commerceapp/utils/constants/image_strings.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/constants/text_string.dart';
import 'package:e_commerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ELoginHeader extends StatelessWidget {
  const ELoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image(
        height: 150,
        image: AssetImage(
          dark ? EImages.lightAppLogo : EImages.darkAppLogo,
        ),
      ),
      Text(
        ETexts.loginTitle,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      const SizedBox(height: ESizes.sm),
      Text(
        ETexts.loginSubTitle,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    ]);
  }
}