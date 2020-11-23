import 'package:flutter/material.dart';

import 'constants.dart';

ScaffoldFeatureController showErrorSnackBar({
  required BuildContext context,
  required Widget content,
  required SnackBarAction action,
  Duration duration = kSnackBarDuration,
  SnackBarBehavior behavior = SnackBarBehavior.floating,
}) {
  final snackBar = SnackBar(
    content: content,
    backgroundColor: kErrorColor,
    behavior: behavior,
    duration: duration,
    action: action,
  );

  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

ScaffoldFeatureController showWarningSnackBar({
  required BuildContext context,
  required Widget content,
  required SnackBarAction action,
  Duration duration = kSnackBarDuration,
  SnackBarBehavior behavior = SnackBarBehavior.floating,
}) {
  final snackBar = SnackBar(
    content: content,
    backgroundColor: kWarningColor,
    behavior: behavior,
    duration: duration,
    action: action,
  );

  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

ScaffoldFeatureController showInfoSnackBar({
  required BuildContext context,
  required Widget content,
  required SnackBarAction action,
  Duration duration = kSnackBarDuration,
  SnackBarBehavior behavior = SnackBarBehavior.floating,
}) {
  final snackBar = SnackBar(
    content: content,
    behavior: behavior,
    duration: duration,
    action: action,
  );

  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

ScaffoldFeatureController showSuccessSnackBar({
  required BuildContext context,
  required Widget content,
  required SnackBarAction action,
  Duration duration = kSnackBarDuration,
  SnackBarBehavior behavior = SnackBarBehavior.floating,
}) {
  final snackBar = SnackBar(
    content: content,
    behavior: behavior,
    duration: duration,
    action: action,
    backgroundColor: kSuccessColor,
  );

  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
