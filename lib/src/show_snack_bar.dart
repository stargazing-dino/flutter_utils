import 'package:flutter/material.dart';

import 'constants.dart';
import 'get_text_color.dart';

enum SnackBarDuration { short, regular, long }

Duration getDuration(durationType) {
  switch (durationType) {
    case SnackBarDuration.long:
      return kSnackBarDurationLong;
    case SnackBarDuration.regular:
      return kSnackBarDuration;
    case SnackBarDuration.short:
      return kSnackBarDurationShort;
    default:
      throw ArgumentError(durationType);
  }
}

void showErrorSnackBar({
  GlobalKey<ScaffoldState> scaffoldKey,
  BuildContext context,
  @required Widget content,
  Duration duration,
  SnackBarDuration durationType = SnackBarDuration.long,
  SnackBarAction action,
  SnackBarBehavior behavior = SnackBarBehavior.floating,
}) {
  assert(scaffoldKey != null || context != null);

  final defaultDuration = getDuration(durationType);

  final snackBar = SnackBar(
    content: DefaultTextStyle(
      style: TextStyle(color: getTextColor(kErrorColor)),
      child: content,
    ),
    backgroundColor: kErrorColor,
    behavior: behavior,
    duration: duration ?? defaultDuration,
    action: action,
  );

  if (scaffoldKey != null) {
    scaffoldKey.currentState.showSnackBar(snackBar);
  } else {
    Scaffold.of(context).showSnackBar(snackBar);
  }
}

void showWarningSnackBar({
  GlobalKey<ScaffoldState> scaffoldKey,
  BuildContext context,
  @required Widget content,
  Duration duration,
  SnackBarDuration durationType = SnackBarDuration.regular,
  SnackBarAction action,
  SnackBarBehavior behavior = SnackBarBehavior.floating,
}) {
  assert(scaffoldKey != null || context != null);

  final defaultDuration = getDuration(durationType);

  final snackBar = SnackBar(
    content: DefaultTextStyle(
      style: TextStyle(color: getTextColor(kWarningColor)),
      child: content,
    ),
    backgroundColor: kWarningColor,
    behavior: behavior,
    duration: duration ?? defaultDuration,
    action: action,
  );

  if (scaffoldKey != null) {
    scaffoldKey.currentState.showSnackBar(snackBar);
  } else {
    Scaffold.of(context).showSnackBar(snackBar);
  }
}

void showInfoSnackBar({
  GlobalKey<ScaffoldState> scaffoldKey,
  BuildContext context,
  @required Widget content,
  Duration duration,
  SnackBarDuration durationType = SnackBarDuration.short,
  SnackBarAction action,
  SnackBarBehavior behavior = SnackBarBehavior.floating,
}) {
  assert(scaffoldKey != null || context != null);

  final defaultDuration = getDuration(durationType);

  final snackBar = SnackBar(
    content: content,
    behavior: behavior,
    duration: duration ?? defaultDuration,
    action: action,
  );

  if (scaffoldKey != null) {
    scaffoldKey.currentState.showSnackBar(snackBar);
  } else {
    Scaffold.of(context).showSnackBar(snackBar);
  }
}

void showSuccessSnackBar({
  GlobalKey<ScaffoldState> scaffoldKey,
  BuildContext context,
  @required Widget content,
  Duration duration,
  SnackBarDuration durationType = SnackBarDuration.short,
  SnackBarAction action,
  SnackBarBehavior behavior = SnackBarBehavior.floating,
}) {
  assert(scaffoldKey != null || context != null);

  final defaultDuration = getDuration(durationType);

  final snackBar = SnackBar(
    content: DefaultTextStyle(
      style: TextStyle(color: getTextColor(kSuccessColor)),
      child: content,
    ),
    behavior: behavior,
    duration: duration ?? defaultDuration,
    action: action,
    backgroundColor: kSuccessColor,
  );

  if (scaffoldKey != null) {
    scaffoldKey.currentState.showSnackBar(snackBar);
  } else {
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
