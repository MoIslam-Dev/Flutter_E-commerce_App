import 'package:e_commerceapp/utils/thems/custome_thems/elevated_button_theme.dart';
import 'package:e_commerceapp/utils/thems/custome_thems/text_theme.dart';
import 'package:flutter/material.dart';

class EAppTheme{
  EAppTheme._();
  static ThemeData lighttheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    textTheme: ETextTheme.LightTextTheme,
    elevatedButtonTheme: E_ElevatedButtonTheme.lightElevatedButtonTheme

  );
    static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: ETextTheme.DarkTextTheme,
    elevatedButtonTheme: E_ElevatedButtonTheme.darkElevatedButtonTheme

  );
}