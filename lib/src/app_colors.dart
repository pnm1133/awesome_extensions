import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

class AppColors {
  late final ThemeData _themeData;

  AppColors._(this._themeData);

  static AppColors of(BuildContext context) {
    return AppColors._(Theme.of(context));
  }

  Color get primaryDarker => primary.darken(20);

  Color get primary => _themeData.colorScheme.primary;

  Color get primaryLightest => primary.lighten(30);

  Color get primaryLighter => primary.lighten(10);

  Color get onPrimary => _themeData.colorScheme.onPrimary;

  Color get background => _themeData.colorScheme.background;

  Color get onBackground => _themeData.colorScheme.onBackground;

  Color get surface => _themeData.colorScheme.surface;

  Color get onSurface => _themeData.colorScheme.onSurface;

  Color get surface2 => _themeData.colorScheme.surface;

  Color get onSurface2 => _themeData.colorScheme.surface;

  Color get surface1 => _themeData.colorScheme.surface;

  Color get onSurface1 => _themeData.colorScheme.surface;

  Color get surfaceVariant => _themeData.colorScheme.surfaceVariant;

  Color get onSurfaceVariant => _themeData.colorScheme.onSurfaceVariant;

  Color get error => _themeData.colorScheme.error;

  Color get onError => _themeData.colorScheme.onError;

  Color get errorContainer => _themeData.colorScheme.errorContainer;

  Color get onErrorContainer => _themeData.colorScheme.onErrorContainer;

  Color get primaryContainer => _themeData.colorScheme.primaryContainer;

  Color get onPrimaryContainer => _themeData.colorScheme.onPrimaryContainer;

  Color get secondary => _themeData.colorScheme.secondary;

  Color get secondaryContainer => _themeData.colorScheme.secondaryContainer;

  Color get onSecondary => _themeData.colorScheme.onSecondary;

  Color get outline => _themeData.colorScheme.outline;

  Color get disable => const Color(0xFFBDBDBD);

  Color get shadow => const Color(0xFFE0E0E0);
}

class AppTextStyles {
  late final ThemeData _themeData;

  AppTextStyles(this._themeData);

  static AppTextStyles of(BuildContext context) {
    return AppTextStyles(Theme.of(context));
  }

  AppTextStyles copyWith({Color? color}) {
    ColorScheme colorScheme = _themeData.colorScheme;
    if (color != null) {
      colorScheme = colorScheme.copyWith(onBackground: color);
    }
    return AppTextStyles(_themeData.copyWith(colorScheme: colorScheme));
  }

  TextStyle get bodyMedium => _themeData.textTheme.bodyMedium!;

  TextStyle get bodySmall => _themeData.textTheme.bodySmall!;

  TextStyle get bodyLarge => _themeData.textTheme.bodyLarge!;

  TextStyle get labelMedium => _themeData.textTheme.labelMedium!;

  TextStyle get labelSmall => _themeData.textTheme.labelSmall!;

  TextStyle get labelLarge => _themeData.textTheme.labelLarge!;

  TextStyle get headlineMedium => _themeData.textTheme.headlineMedium!;

  TextStyle get headlineSmall => _themeData.textTheme.headlineSmall!;

  TextStyle get headlineLarge => _themeData.textTheme.headlineLarge!;

  TextStyle get titleMedium => _themeData.textTheme.titleMedium!;

  TextStyle get titleSmall => _themeData.textTheme.titleSmall!;

  TextStyle get titleLarge => _themeData.textTheme.titleLarge!;

  TextStyle get displayMedium => _themeData.textTheme.displayMedium!;

  TextStyle get displaySmall => _themeData.textTheme.displaySmall!;

  TextStyle get displayLarge => _themeData.textTheme.displayLarge!;
}

/// Converts in a simple way a textStyle to the desired font weight.
///
/// Example usage:
/// `context.textStyles.h1.semiBold`
extension FontWeights on TextStyle {
  /// Black, the most thick
  TextStyle get thick => copyWith(fontWeight: FontWeight.w900);

  /// Extra-bold
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);

  /// Bold
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);

  /// Semi-bold
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  /// Medium
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  /// Normal, regular, plain
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  /// Light
  TextStyle get light => copyWith(fontWeight: FontWeight.w300);

  /// Extra-light
  TextStyle get extraLight => copyWith(fontWeight: FontWeight.w200);

  /// Thin, the least thick
  TextStyle get thin => copyWith(fontWeight: FontWeight.w100);
}

/// Converts in a simple way a textStyle to the desired font style.
///
/// Example usage:
/// `context.textStyles.h1.italic`
extension FontStyles on TextStyle {
  /// Use the upright glyphs
  TextStyle get normal => copyWith(fontStyle: FontStyle.normal);

  /// Use glyphs designed for slanting
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
}

extension TextDecorationStyles on TextStyle {
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);

  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);

  TextStyle get overline => copyWith(decoration: TextDecoration.overline);

  TextStyle get none => copyWith(decoration: TextDecoration.none);
}
