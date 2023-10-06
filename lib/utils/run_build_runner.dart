import 'dart:io';

Future<ProcessResult> runBuildRunner(String app) => Process.run(
    'dart',
    [
      'run',
      'build_runner',
      'build',
      '--delete-conflicting-outputs',
    ],
    workingDirectory: './$app',
    runInShell: true);
