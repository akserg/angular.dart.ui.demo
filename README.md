angular.dart.ui.demo [![Build Status](https://drone.io/github.com/akserg/angular.dart.ui.demo/status.png)](https://drone.io/github.com/akserg/angular.dart.ui.demo/latest)
====================

### Demo

Demo page for [Dart Angular-UI](http://akserg.github.io/angular.dart.ui.demo/build/index.html).

**Carousel is not yet working in Chrome due to missing ShadowDOM CSS selector support.**

### Build

#### prepare

- clone this GitHub repository to a local directory and name it `angular.dart.ui.demo`
- clone this GitHub repository to a local directory and name it `angular.dart.ui.demo.gh_pages`
- change directory to `angular.dart.ui.demo.gh_pages`
- run `git checkout -b gh_pages`

#### update

- set `DART_SDK` environment variable `export DART_SDK=/path/to/dart-sdk`la 
<!-- - change  directory to `angular.dart.ui.demo/bin` -->
- run `dart bin/generator.dart`
- change directory to `angular.dart.ui.demo`
- ensure that index.dart imports `import 'initializer_prod.dart' as init;` and not `import 'initializer_dev.dart' as init;`
- run `pub build`
- validate that the built result works properly
- change directory to `angular.dart.ui.demo_ghpages`
- delete the build directory
- copy the build directory from `angular.dart.ui.demo/build` to `angular.dart.ui.demo.gh_pages/build`
`cp -R ../angular.dart.ui.demo/build/web build`
- copy the lib directory from `angular.dart.ui.demo/lib` to `angular.dart.ui.demo.gh_pages/build/packages/angular_ui_demo`
`cp -R ../angular.dart.ui.demo/lib/ build/packages/angular_ui_demo`
- copy the lib directory from `angular.dart.ui/lib` to `angular.dart.ui.demo.gh_pages/build/packages/angular_ui`
`cp -R ../angular.dart.ui/lib build/packages/angular_ui`
- check in the changes in the `angular.dart.ui.demo.gh_pages` repository
- push to the `gh_pages` branch

## Credits
Big thanks for yours valuable input:
- **T�nis Pool** [](https://github.com/poolik).
- **AngularDart project** (https://github.com/angular/angular.dart)
- **Günter Zöchbauer** (https://github.com/zoechi).

