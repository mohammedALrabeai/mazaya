import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get cairo {
    return copyWith(
      fontFamily: 'Cairo',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get bodyLargeOnPrimary =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static TextStyle get bodyLargeOnPrimary_1 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.7),
      );
  static TextStyle get bodyMediumBlack900 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get bodyMediumOnPrimary =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static TextStyle get bodyMediumOnPrimary_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static TextStyle get bodyMediumPrimary =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get bodySmallOnPrimary =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
// Display text style
  static TextStyle get displaySmallOnPrimary =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
// Headline text style
  static TextStyle get headlineLargeBlack900 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get headlineLargeBlack900Medium =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get headlineLargeBlack900_1 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get headlineLargeBlack900_2 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
      );
// Title text style
  static TextStyle get titleLargeBlack900 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleLargeBlack900Medium =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleLargeBlack900Regular =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontWeight: FontWeight.w400,
      );
  static TextStyle get titleLargeLime700 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.lime700,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleLargeRegular =>
      theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleMediumCairo => theme.textTheme.titleMedium!.cairo;
  static TextStyle get titleMediumOnPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumOnPrimary_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static TextStyle get titleMediumOnPrimary_2 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static TextStyle get titleMediumPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w900,
      );
}
