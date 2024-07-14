import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/thems/custome_thems/appbar_theme.dart';
import 'package:e_commerceapp/utils/thems/custome_thems/button_sheat_theme.dart';
import 'package:e_commerceapp/utils/thems/custome_thems/checkbox_theme.dart';
import 'package:e_commerceapp/utils/thems/custome_thems/chip_theme.dart';
import 'package:e_commerceapp/utils/thems/custome_thems/elevated_button_theme.dart';
import 'package:e_commerceapp/utils/thems/custome_thems/outline_button_theme.dart';
import 'package:e_commerceapp/utils/thems/custome_thems/text_feild_theme.dart';
import 'package:e_commerceapp/utils/thems/custome_thems/text_theme.dart';
import 'package:flutter/material.dart';

class EAppTheme{
  EAppTheme._();
  static ThemeData lighttheme = ThemeData(
  useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: EColors.grey,
    brightness: Brightness.light,
    primaryColor: EColors.primary,
    textTheme: ETextTheme.LightTextTheme,
    chipTheme: EChipTheme.light,
    scaffoldBackgroundColor: EColors.white,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    checkboxTheme: ECheckboxTheme.light,
    bottomSheetTheme: EBottomSheetTheme.light,
    elevatedButtonTheme: E_ElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: E_OutlinedButtonTheme.light,
    inputDecorationTheme: E_TextFieldTheme.light

  );
    static ThemeData darkTheme = ThemeData(
   useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: EColors.grey,
    brightness: Brightness.dark,
    primaryColor: EColors.primary,
    textTheme: ETextTheme.DarkTextTheme,
    chipTheme: EChipTheme.dark,
    scaffoldBackgroundColor: EColors.black,
    appBarTheme: EAppBarTheme.darkAppBarTheme,
    checkboxTheme: ECheckboxTheme.dark,
    bottomSheetTheme: EBottomSheetTheme.dark,
    elevatedButtonTheme: E_ElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: E_OutlinedButtonTheme.dark,
    inputDecorationTheme: E_TextFieldTheme.dark,
  );
}