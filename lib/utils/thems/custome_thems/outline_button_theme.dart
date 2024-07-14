import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class E_OutlinedButtonTheme {
  E_OutlinedButtonTheme._();

  static final light = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: EColors.dark,
      side: const BorderSide(color: EColors.borderPrimary),
      textStyle: const TextStyle(
        fontSize: 16,
        color: EColors.black,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
          vertical: ESizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ESizes.buttonRadius),
      ),
    ),
  );

  static final dark = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: EColors.light,
      side: const BorderSide(color: EColors.borderPrimary),
      textStyle: const TextStyle(
        fontSize: 16,
        color: EColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
          vertical: ESizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ESizes.buttonRadius),
      ),
    ),
  );
}