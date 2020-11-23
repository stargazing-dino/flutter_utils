import 'package:flutter/rendering.dart';

/// Returns either `white` or `black` based off [backgroundColor].
///
/// E.g. a dark [backgroundColor] will return a white.
Color getTextColor(Color backgroundColor) {
  var d = 0;

  // Counting the perceptive luminance - human eye favors green background color...
  final luminance = (0.299 * backgroundColor.red +
          0.587 * backgroundColor.green +
          0.114 * backgroundColor.blue) /
      255;

  if (luminance > 0.5) {
    d = 30; // bright colors - black font - // #686868
  } else {
    d = 255; // dark colors - white font
  }

  return Color.fromARGB(backgroundColor.alpha, d, d, d);
}
