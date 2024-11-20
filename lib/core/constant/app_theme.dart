import 'package:flutter/material.dart';
import 'package:umk_app_pkm/core/constant/app_colors.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
    primaryColor: AppColors.primarycolor,
    scaffoldBackgroundColor: AppColors.secondarycolor,
    bottomNavigationBarTheme: AppColors.menucolor,
  );
}