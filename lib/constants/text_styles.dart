import 'package:flutter/material.dart';
import 'package:covid19/constants/colors.dart';

class TextStyles {
  TextStyles._(); // this basically makes it so you can instantiate this class

  /// ------------------------------------------------------
  /// Global Font Styles
  /// used used throughout the app
  ///
  static const titleTextStyle = TextStyle(
    color: AppColors.accentBlackColor,
  );

  static const hightlightText = TextStyle(
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );

  /// ------------------------------------------------------
  /// Font Styles for Error Screen
  /// used in (ui/static/static_error_screen)
  ///
  static const errorHeadingTextStlye = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
  );

  static const errorDescriptionTextStlye = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.blackColor,
  );

  static const errorButtonTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.whiteColor,
  );

  /// ------------------------------------------------------
  /// Font Styles for Statistics Screen
  /// used in (ui/statistics) and (ui/statistics/widgets)
  ///
  static const statisticsHeadingTextStlye = TextStyle(
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );

  static const statisticsSubHeadingTextStlye = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.offBlackColor,
  );

  static const statisticsAccentTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.blueColor,
  );

  static const infoCountTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
  );

  static const infoLabelTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    color: AppColors.offBlackColor,
  );

  static const statisticsLabelTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.accentBlackColor,
  );

  static const statisticsToopTipTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.whiteColor,
  );
}
