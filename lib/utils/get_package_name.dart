import 'dart:io';

import 'package:mason/mason.dart';
import 'package:pubspec_yaml/pubspec_yaml.dart';

Future<String> getPackageName(HookContext context) async {
  final pubspec = File('pubspec.yaml').readAsStringSync().toPubspecYaml();
  return pubspec.name;
}
