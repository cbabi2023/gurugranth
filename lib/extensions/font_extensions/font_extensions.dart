import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  Color get adaptiveTextColor => Theme.of(this).brightness == Brightness.dark
      ? Colors.white
      : Colors.black;

  TextStyle baseTextStyle(FontWeight fontWeight) {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: 'AnekMalayalam', // Updated font family
      fontWeight: fontWeight,
      color: adaptiveTextColor,
    );
  }

  // AnekMalayalam Text Styles
  TextStyle get anekMalayalamRegular => baseTextStyle(FontWeight.w400);
  TextStyle get anekMalayalamBold => baseTextStyle(FontWeight.w700);
  TextStyle get anekMalayalamExtraBold => baseTextStyle(FontWeight.w800);
  TextStyle get anekMalayalamLight => baseTextStyle(FontWeight.w300);
  TextStyle get anekMalayalamThin => baseTextStyle(FontWeight.w100);
  TextStyle get anekMalayalamSemiBold => baseTextStyle(FontWeight.w600);
  TextStyle get anekMalayalamMedium => baseTextStyle(FontWeight.w500);

  // Predefined text styles with specific font sizes
  TextStyle get anekMalayalamRegular12 =>
      anekMalayalamRegular.copyWith(fontSize: 12);
  TextStyle get anekMalayalamRegular14 =>
      anekMalayalamRegular.copyWith(fontSize: 14);
  TextStyle get anekMalayalamRegular16 =>
      anekMalayalamRegular.copyWith(fontSize: 16);
  TextStyle get anekMalayalamSemiBold26 =>
      anekMalayalamSemiBold.copyWith(fontSize: 26);
  TextStyle get anekMalayalamSemiBold12 =>
      anekMalayalamSemiBold.copyWith(fontSize: 12);
  TextStyle get anekMalayalamBold18 => anekMalayalamBold.copyWith(fontSize: 18);
  TextStyle get anekMalayalamBold20 => anekMalayalamBold.copyWith(fontSize: 20);
  TextStyle get anekMalayalamExtraBold22 =>
      anekMalayalamExtraBold.copyWith(fontSize: 22);
  TextStyle get anekMalayalamLight16 =>
      anekMalayalamLight.copyWith(fontSize: 16);
  TextStyle get anekMalayalamThin14 => anekMalayalamThin.copyWith(fontSize: 14);
  TextStyle get anekMalayalamItalic18 =>
      anekMalayalamRegular.copyWith(fontSize: 18, fontStyle: FontStyle.italic);
  TextStyle get anekMalayalamBoldUnderlined16 => anekMalayalamBold.copyWith(
      fontSize: 16, decoration: TextDecoration.underline);

  TextStyle get anekMalayalamRegular12Gray =>
      anekMalayalamRegular12.copyWith(color: Colors.grey);
  TextStyle get anekMalayalamMedium16 =>
      anekMalayalamMedium.copyWith(fontSize: 16);
  TextStyle get anekMalayalamSemiBold20 =>
      anekMalayalamSemiBold.copyWith(fontSize: 20);
 
  TextStyle get anekMalayalamBoldItalic18 =>
      anekMalayalamBold.copyWith(fontSize: 18, fontStyle: FontStyle.italic);
  TextStyle get anekMalayalamUnderlined14 =>
      anekMalayalamRegular14.copyWith(decoration: TextDecoration.underline);

  TextStyle get headlineLarge => anekMalayalamBold.copyWith(fontSize: 32);
  TextStyle get bodySmall => anekMalayalamLight.copyWith(fontSize: 14);
  TextStyle get titleMedium => anekMalayalamMedium.copyWith(fontSize: 20);
}
