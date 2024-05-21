import 'package:flutter/material.dart';
import '../core/app_export.dart';
/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillErrorContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.errorContainer.withOpacity(1),
      //  foregroundColor: theme.colorScheme.errorContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  static ButtonStyle get withoutShadow => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary.withOpacity(0.1),
    shadowColor: Colors.transparent,
    //  foregroundColor: theme.colorScheme.errorContainer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.h),
    ),
  );
  static ButtonStyle get rounded => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.errorContainer.withOpacity(0.1),
    //  foregroundColor: theme.colorScheme.errorContainer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.h),
    ),
  );
// text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}