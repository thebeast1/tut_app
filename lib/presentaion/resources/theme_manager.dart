import 'package:demo/presentaion/resources/color_manager.dart';
import 'package:demo/presentaion/resources/font_manager.dart';
import 'package:demo/presentaion/resources/styles_manager.dart';
import 'package:demo/presentaion/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    ///main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.gray1,
    splashColor: ColorManager.lightPrimary,
    //card view theme
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.gray1,
        elevation: AppSize.s4),

    ///app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle: getRegularStyle(
        fontSize: FontSize.s16,
        color: ColorManager.white,
      ),
    ),

    ///button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.gray1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
    ),
    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: FontSize.s17,
        ),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    ///text theme
    textTheme: TextTheme(
      displayLarge:
          getLightStyle(color: ColorManager.white, fontSize: FontSize.s22),
      headline1: getSimiBoldStyle(
          color: ColorManager.darkGray, fontSize: FontSize.s16),
      subtitle1:
          getMediumStyle(color: ColorManager.lightGray, fontSize: FontSize.s14),
      caption: getRegularStyle(color: ColorManager.gray1),
      bodyText1: getRegularStyle(color: ColorManager.grey),
    ),

    ///input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      ///content padding
      contentPadding: EdgeInsets.all(AppPadding.p8),

      ///hint Style
      hintStyle:
          getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),

      ///lable style
      labelStyle:
          getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),

      ///error style
      errorStyle: getRegularStyle(color: ColorManager.error),

      ///enabled border
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
          borderRadius: BorderRadius.circular(AppSize.s8)),

      ///focused border
      focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: BorderRadius.circular(AppSize.s8)),

      ///error border
      errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.error, width: AppSize.s1_5),
          borderRadius: BorderRadius.circular(AppSize.s8)),

      ///focused error border
      focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: BorderRadius.circular(AppSize.s8)),
    ),
  );
}
