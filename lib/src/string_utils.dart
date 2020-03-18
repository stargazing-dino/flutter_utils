final _camelExp = RegExp(r'(?<!(^|[A-Z]))(?=[A-Z])|(?<!^)(?=[A-Z][a-z])');
final svgExp = RegExp(r'\.svg');

bool isSvg(String string) => svgExp.hasMatch(string);

String capitalize(String string) {
  return '${string[0].toUpperCase()}${string.substring(1)}';
}

String splitCamelCase(String string) {
  return string.split(_camelExp).join(' ');
}
