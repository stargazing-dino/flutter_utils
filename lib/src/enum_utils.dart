import 'package:flutter/foundation.dart';
import 'package:flutter_utils/src/string_utils.dart';

String titleCaseEnum(dynamic enumerable) {
  final stringCategory = describeEnum(enumerable);
  final title =
      splitCamelCase(stringCategory).split(' ').map(capitalize).join(' ');

  return title;
}

T enumFromString<T>(Iterable<T> values, String value) {
  return values.firstWhere(
    (type) => type.toString().split('.').last == value,
    orElse: () => throw 'No enum found for value $value',
  );
}
