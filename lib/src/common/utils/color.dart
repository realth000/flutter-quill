import 'package:dart_bbcode_web_colors/dart_bbcode_web_colors.dart';
import 'package:flutter/material.dart';

import '../../editor/widgets/default_styles.dart';

Color stringToColor(String? s, [Color? originalColor, DefaultStyles? defaultStyles]) {
  final palette = defaultStyles?.palette;
  if (s != null && palette != null) {
    final maybeColor = palette[s];
    if (maybeColor != null) {
      return maybeColor;
    }
  }

  final color = s.toColor();
  if (color != null) {
    return Color(color);
  }

  // TODO: take care of "color": "inherit"
  if (s == null || s.startsWith('inherit')) {
    return originalColor ?? Colors.black;
  }

  if (!s.startsWith('#')) {
    throw UnsupportedError('Color code not supported');
  }

  var hex = s.replaceFirst('#', '');
  hex = hex.length == 6 ? 'ff$hex' : hex;
  final val = int.parse(hex, radix: 16);
  return Color(val);
}
