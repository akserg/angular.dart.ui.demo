// Copyright (C) 2013 - 2014 Angular Dart UI authors. Please see AUTHORS.md.
// https://github.com/akserg/angular.dart.ui
// All rights reserved.  Please see the LICENSE.md file.
library angular.ui.demo;

import 'dart:html' as dom;
//import 'dart:math' as math;
import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'package:angular_ui/angular_ui.dart';
import 'package:logging/logging.dart';

@MirrorsUsed(targets: const[
  'angular.ui',
  'angular.ui.demo'
], override: '*')
import 'dart:mirrors';
// Services
import 'package:angular_ui_demo/ui_elements.dart';
import 'package:angular_ui_demo/header/header_component.dart';
import 'package:angular_ui_demo/module/module_component.dart';
import 'package:angular_ui_demo/getting_started/getting_started_component.dart';
import 'package:angular_ui_demo/sidebar/sidebar_component.dart';
import 'package:angular_ui_demo/jumbotron/jumbotron_component.dart';
// Demo Components
import 'package:angular_ui_demo/accordion/demo.dart';
import 'package:angular_ui_demo/alert/demo.dart';
import 'package:angular_ui_demo/button/demo.dart';
import 'package:angular_ui_demo/carousel/demo.dart';
import 'package:angular_ui_demo/collapse/demo.dart';
//import 'package:angular_ui_demo/datepicker/demo.dart';
import 'package:angular_ui_demo/dropdown_toggle/demo.dart';
import 'package:angular_ui_demo/modal_embedded/demo.dart';
import 'package:angular_ui_demo/modal_external/demo.dart';

/**
 * Entry point into app.
 */
main() {

  hierarchicalLoggingEnabled = true;
  Logger.root.level = Level.OFF;
  Logger.root.onRecord.listen((LogRecord r) {
    DateTime now = new DateTime.now();
    dom.window.console.log('${now} [${r.level}] ${r.loggerName}: ${r.message}');
  });
  new Logger("angular.ui")..level = Level.FINER;

  applicationFactory()
    .addModule(new AngularUIModule())
    .addModule(new DemoModule())
    .run();
}

/**
 * Demo Module
 */
class DemoModule extends Module {
  DemoModule() {
    // Services
    bind(Docs);
    bind(UiElement);
    bind(UiElementList);
    bind(InjectorDecorator);
    // Components
    bind(HeaderComponent);
    bind(ModuleComponent);
    bind(GettingStartedComponent);
    bind(SidebarComponent);
    bind(JumbotronComponent);
    // Demo Components
    bind(AccordionDemoComponent);
    bind(AlertDemoComponent);
    bind(ButtonDemoComponent);
    bind(CarouselDemoComponent);
    bind(CollapseDemoComponent);
    //bind(DatepickerDemoComponent);
    bind(DropdownToggleDemoComponent);
    bind(ModalEmbeddedDemoComponent);
    bind(ModalExternalDemoComponent);
  }
}