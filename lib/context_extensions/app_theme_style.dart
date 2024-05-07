part of '../awesome_extensions.dart';

extension ThemesExtension on BuildContext {
  AppColors get appColors => AppColors.of(this);

  AppTextStyles get appTextStyles => AppTextStyles.of(this);

  AppTextStyles appTextStylesWithColor(Function(AppColors appColors) getColor) {
    return appTextStyles.copyWith(color: getColor(appColors));
  }
}
