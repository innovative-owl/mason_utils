import 'dart:io';

import 'package:pubspec_yaml/pubspec_yaml.dart';

Future<String> generateDefaultPubspec() async {
  final pubspecYaml = File('pubspec').readAsStringSync().toPubspecYaml();
  return pubspecYaml.toYamlString();
}
