#!/bin/dart
library x;

import 'dart:async' show Future;
import 'dart:convert';
import 'dart:io' as io;
import 'package:path/path.dart' as path;

const SRC_DIR = '../../angular.dart.ui.demo/lib/'; // copy dart files from
const DST_DIR = '../build/packages/angular_ui_demo'; // copy Dart files to
const SRC_BUILD_DIR = '../../angular.dart.ui.demo/build/web'; // copy build output from
const DST_BUILD_DIR = '../build'; // copy build output to

Future<io.Process> copyDir(io.Directory src, io.Directory dst) {
  print('cp -rf ${src.path} ${dst.path}');
  return io.Process.start('cp', ['-rfv', src.path, dst.path], runInShell: true, includeParentEnvironment: true);

}

void fixFiles() {
  print('fixFiles');
  io.Directory dstDir = new io.Directory.fromUri(Uri.parse(DST_DIR));
  io.Directory srcDir = new io.Directory.fromUri(Uri.parse(SRC_DIR));

  dstDir.list().forEach((io.FileSystemEntity dst) {
    if(dst is io.Directory) {
      //print('dirname: ${path.basename(dst.path)}');

      var srcDir = path.normalize(path.join(SRC_DIR, path.basename(dst.path)));
      io.File srcFile = new io.File.fromUri(Uri.parse(path.join(srcDir, 'demo.dart')));
      print('source file: ${srcFile.path}');
      srcFile.exists().then((bool exists) {
        print(exists);
        if(exists) {
          String dstPath = path.join(dst.path, 'demo.dart');
          print('srcFile: ${srcFile.path} - dstFile: ${dstPath}');

          srcFile.copy(dstPath);
        }
        return exists;
      });

      io.File jsFile = new io.File.fromUri(Uri.parse(path.join(DST_DIR, 'demo.js')));
      jsFile.exists().then((e) => e == true ?
          jsFile.delete().then((value) => print(value),
          onError: (io.FileSystemException e) => print('${e.message} \'${jsFile.path}\'')) :
          {});
      jsFile = new io.File.fromUri(Uri.parse(path.join(DST_DIR, '_demo.js')));
      jsFile.exists().then((e) => e == true ?
          jsFile.delete().then((value) => print(value),
          onError: (io.FileSystemException e) => print('${e.message} \'${jsFile.path}\''))
          : {});

      //print('directory: $srcDir -> $dst');
    } else {
      print('file: $srcDir');
    }
  });
}

void main(List<String> args) {

  print('cwd: ${path.current}');
  io.Directory dstBuildDir = new io.Directory.fromUri(Uri.parse(DST_BUILD_DIR));
  io.Directory srcBuildDir = new io.Directory.fromUri(Uri.parse(SRC_BUILD_DIR));
  dstBuildDir.exists().then((bool exists) {
    if(exists) {
      dstBuildDir.delete(recursive: true)
      .then((value) {
        copyDir(srcBuildDir, dstBuildDir)
        .then((io.Process p) {
          print(p);
          p.stdout.listen((d) => print(UTF8.decoder.convert(d)));
          p.stderr.listen((d) => print(UTF8.decoder.convert(d)));
          p.exitCode.then((ec) => print('Exit code: $ec'));
        },
        onError: (e) => print(e))
          .then((onValue) => fixFiles());
      });
    } else {
      copyDir(srcBuildDir, dstBuildDir)
      .then((io.Process p) {
        p.stdout.listen((d) => print(UTF8.decoder.convert(d)));
        p.stderr.listen((d) => print(UTF8.decoder.convert(d)));
        p.exitCode.then((ec) => print('Exit code: $ec'));
      },
      onError: (e) => print(e))
        .then((onValue) => fixFiles());
    }
    return true;
  });
}
