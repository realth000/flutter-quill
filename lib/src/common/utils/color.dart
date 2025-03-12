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
    return color;
  }

  // TODO: take care of "color": "inherit"
  if (s == null || s.startsWith('inherit')) {
    return originalColor ?? Colors.black;
  }

  throw UnsupportedError('unknown color format "$s"');
}
