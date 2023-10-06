import 'dart:io';

import 'package:mason/mason.dart';

/// Install dependencies in a given directory.
Future<void> installDependencies(
  HookContext context, {
  required List<String> packages,
  required String appDirectory,
}) async {
  for (final package in packages) {
    final log = context.logger.progress('Installing $package');
    await _installPackage(package, appDirectory);
    log.complete();
  }
}

Future<ProcessResult> _installPackage(String p, String app) =>
    Process.run('dart', ['pub', 'add', p], workingDirectory: './$app');
