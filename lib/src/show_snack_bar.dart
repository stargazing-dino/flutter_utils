import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import 'constants.dart';

ScaffoldFeatureController showErrorSnackBar({
  required BuildContext context,
  required Widget content,
  SnackBarAction? action,
  Duration duration = kSnackBarDuration,
  SnackBarBehavior behavior = SnackBarBehavior.floating,
}) {
  action ??= SnackBarAction(
    label: 'OK',
    onPressed: Navigator.of(context)!.pop,
  );

  final snackBar = SnackBar(
    content: DefaultTextStyle(
      style: TextStyle(color: getTextColor(kErrorColor)),
      child: content,
    ),
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
  SnackBarAction? action,
  Duration duration = kSnackBarDuration,
  SnackBarBehavior behavior = SnackBarBehavior.floating,
}) {
  action ??= SnackBarAction(
    label: 'OK',
    onPressed: Navigator.of(context)!.pop,
  );

  final snackBar = SnackBar(
    content: DefaultTextStyle(
      style: TextStyle(color: getTextColor(kWarningColor)),
      child: content,
    ),
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
  SnackBarAction? action,
  Duration duration = kSnackBarDuration,
  SnackBarBehavior behavior = SnackBarBehavior.floating,
}) {
  action ??= SnackBarAction(
    label: 'OK',
    onPressed: Navigator.of(context)!.pop,
  );

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
  SnackBarAction? action,
  Duration duration = kSnackBarDuration,
  SnackBarBehavior behavior = SnackBarBehavior.floating,
}) {
  action ??= SnackBarAction(
    label: 'OK',
    onPressed: Navigator.of(context)!.pop,
  );

  final snackBar = SnackBar(
    content: DefaultTextStyle(
      style: TextStyle(color: getTextColor(kSuccessColor)),
      child: content,
    ),
    behavior: behavior,
    duration: duration,
    action: action,
    backgroundColor: kSuccessColor,
  );

  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
