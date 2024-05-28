import 'package:_finance_tracking/config/theme/dark_theme_colors.dart';
import 'package:_finance_tracking/config/theme/light_theme_colors.dart';
import 'package:_finance_tracking/config/theme/my_styles.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData getThemeData({required bool isLight}) {
    return ThemeData(
      useMaterial3: true,
      // main color (app bar,tabs..etc)
      primaryColor: isLight
          ? LightThemeColors.primaryColor
          : DarkThemeColors.primaryColor,

      colorScheme: isLight
          ? ColorScheme.light(
              primary: LightThemeColors.primaryColor,
              secondary: LightThemeColors.secondaryColor,
              tertiary: LightThemeColors.tertiaryColor,
            )
          : ColorScheme.dark(
              primary: DarkThemeColors.primaryColor,
              secondary: DarkThemeColors.secondaryColor,
              tertiary: DarkThemeColors.tertiaryColor,
            ),

      // color contrast (if the theme is dark text should be white for example)
      brightness: isLight ? Brightness.light : Brightness.dark,

      // card widget background color
      cardColor:
          isLight ? LightThemeColors.cardColor : DarkThemeColors.cardColor,

      // hint text color
      hintColor: isLight
          ? LightThemeColors.hintTextColor
          : DarkThemeColors.hintTextColor,

      // divider color
      dividerColor: isLight
          ? LightThemeColors.dividerColor
          : DarkThemeColors.dividerColor,

      dividerTheme: DividerThemeData(
        color: isLight
            ? LightThemeColors.dividerColor
            : DarkThemeColors.dividerColor,
      ),

      scaffoldBackgroundColor: isLight
          ? LightThemeColors.scaffoldBackgroundColor
          : DarkThemeColors.scaffoldBackgroundColor,

      // progress bar theme
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: isLight
            ? LightThemeColors.primaryColor
            : DarkThemeColors.primaryColor,
      ),

      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      ),

      // appBar theme
      appBarTheme: MyStyles.getAppBarTheme(isLightTheme: isLight),

      // elevated button theme
      elevatedButtonTheme:
          MyStyles.getElevatedButtonTheme(isLightTheme: isLight),

      // textButtonTheme: MyStyles.getTextButtonTheme(isLightTheme: isLight),

      // text theme
      textTheme: MyStyles.getTextTheme(isLightTheme: isLight),

      // chip theme
      chipTheme: MyStyles.getChipTheme(isLightTheme: isLight),

      // icon theme
      iconTheme: MyStyles.getIconTheme(isLightTheme: isLight),

      // input theme
      inputDecorationTheme: MyStyles.getInputTheme(isLightTheme: isLight),
    );
  }
}
