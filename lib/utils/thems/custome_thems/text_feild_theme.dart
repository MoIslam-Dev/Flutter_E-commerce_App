import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class E_TextFieldTheme {
  E_TextFieldTheme._();

  static InputDecorationTheme light = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: EColors.darkGrey,
    suffixIconColor: EColors.darkGrey,
    labelStyle: const TextStyle().copyWith(
      fontSize: ESizes.fontSizeMd,
      color: EColors.black,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: ESizes.fontSizeMd,
      color: EColors.black,
    ),
    errorStyle: const TextStyle().copyWith(
      fontStyle: FontStyle.normal,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: EColors.black.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: EColors.grey,
      ),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: EColors.grey,
      ),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: EColors.dark,
      ),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: EColors.warning,
      ),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 2,
        color: EColors.warning,
      ),
    ),
  );

  static InputDecorationTheme dark = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: EColors.darkGrey,
    suffixIconColor: EColors.darkGrey,
    labelStyle: const TextStyle().copyWith(
      fontSize: ESizes.fontSizeMd,
      color: EColors.white,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: ESizes.fontSizeMd,
      color: EColors.white,
    ),
    errorStyle: const TextStyle().copyWith(
      fontStyle: FontStyle.normal,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: EColors.white.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: EColors.darkGrey,
      ),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: EColors.darkGrey,
      ),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: EColors.white,
      ),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: EColors.warning,
      ),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 2,
        color: EColors.warning,
      ),
    ),
  );
}