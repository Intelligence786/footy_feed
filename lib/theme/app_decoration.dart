import 'package:flutter/material.dart';

import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );

  static BoxDecoration get fillErrorContainer1 => BoxDecoration(
        color: theme.colorScheme.errorContainer.withOpacity(0.08),
      );

  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );

  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  static BoxDecoration get fillWhiteWithBorderTop => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      );

  static BoxDecoration get withoutShadow => BoxDecoration(
      color: theme.colorScheme.errorContainer.withOpacity(0.08), boxShadow: []);

// Gradient decorations
  static BoxDecoration get gradientPrimaryContainerToOnErrorContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primaryContainer,
            theme.colorScheme.onErrorContainer
          ],
        ),
      );

  static BoxDecoration get gradientPrimaryContainerToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 1),
          end: Alignment(0.5, 0),
          colors: [
            theme.colorScheme.primaryContainer.withOpacity(0.1),
            theme.colorScheme.onPrimary.withOpacity(1)
          ],
        ),
      );

  static BoxDecoration get gradientPrimaryContainerToPrimaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primaryContainer,
            theme.colorScheme.primaryContainer.withOpacity(1)
          ],
        ),
      );

// Outline decorations
  static BoxDecoration get outlineErrorContainer => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.errorContainer.withOpacity(0.14),
            width: 1.h,
          ),
        ),
      );

  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(0.08),
            width: 1.h,
          ),
        ),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
        top: Radius.circular(10.h),
      );

  static BorderRadius get customBorderTL16 => BorderRadius.all(
        Radius.circular(16.h),
      );

  static BorderRadius get customBorderTOP16 => BorderRadius.vertical(
        top: Radius.circular(16.h),
      );

// Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );

  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}
