import 'package:flutter/material.dart';

import '../domain/domain.dart';

extension ColorExtension on String {
  Color? toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
    return null;
  }
}

extension TagExtension on Tag {
  IconData get iconData {
    switch (this) {
      case Tag.home:
        return Icons.home_outlined;
      case Tag.study:
        return Icons.school_outlined;
      case Tag.work:
        return Icons.work_outline;
      case Tag.sport:
        return Icons.sports_soccer_outlined;
      case Tag.friends:
        return Icons.people_alt_outlined;
      default:
        throw Exception('no such tag');
    }
  }

  String get name {
    switch (this) {
      case Tag.home:
        return 'Home';
      case Tag.study:
        return 'Study';
      case Tag.work:
        return 'Work';
      case Tag.sport:
        return 'Sport';
      case Tag.friends:
        return 'Friends';
      default:
        throw Exception('no such tag');
    }
  }

  static List<Color> tagColors = [
    const Color(0xffbbd0ff),
    const Color(0xffb8c0ff),
    const Color(0xffc8b6ff),
    const Color(0xffe7c6ff),
    const Color(0xffffd6ff),
  ];

  Color get color {
    return tagColors[Tag.values.indexOf(this)];
  }
}
