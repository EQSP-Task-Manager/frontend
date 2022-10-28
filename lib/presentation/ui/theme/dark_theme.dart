import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_theme.dart';

class DarkTheme extends AppTheme {
  DarkTheme()
      : super(
          supportSeparator: const Color(0x33FFFFFF),
          supportOverlay: const Color(0x52000000),
          labelPrimary: const Color(0xFFFFFFFF),
          labelSecondary: const Color(0x99FFFFFF),
          labelTertiary: const Color(0x66FFFFFF),
          labelDisable: const Color(0x26FFFFFF),
          lightGrey: const Color(0xFF48484A),
          backPrimary: const Color(0xFF161618),
          backSecondary: const Color(0xFF252528),
          backElevated: const Color(0xFF3C3C3F),
        );
}
