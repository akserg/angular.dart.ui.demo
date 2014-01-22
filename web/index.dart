library angular.ui.demo;


import 'dart:html' as dom;
import 'package:angular/angular.dart';
import 'package:logging/logging.dart' show Logger, Level;
import 'package:logging_handlers/logging_handlers_shared.dart';

import 'package:angular_ui_demo/app/app.dart';
import 'package:angular_ui/angular_ui.dart';
import 'package:angular_ui_demo/app/injectable_service.dart';

// import 'package:di/di.dart';
// import 'package:perf_api/perf_api.dart';

import 'package:angular_ui_demo/accordion/demo.dart';
import 'package:angular_ui_demo/alert/demo.dart';
import 'package:angular_ui_demo/collapse/demo.dart';
import 'package:angular_ui_demo/dropdown_toggle/demo.dart';
//import 'package:angular_ui_demo/modal/demo.dart';
import 'package:angular_ui_demo/rating/demo.dart';
//import 'package:angular_ui_demo/tabs/demo.dart';

// During development it's easier to use dynamic parser and injector, so use
// initializer-dev.dart instead. Before using initializer-prod.dart make sure
// you run: dart -c bin/generator.dart
import 'initializer_prod.dart' as init; // Use in prod/test.
//import 'initializer_dev.dart' as init; // Use in dev.

// Used by dart2js to indicate which targets are being reflected on, to allow
// tree-shaking.

@MirrorsUsed(
    targets: const [
        'angular',
        'angular.core',
        'angular.core.dom',
        'angular.core.parser',
        'angular.core.parser.dynamic_parser',
        'angular.core.parser.static_parser',
        'angular.routing',
        dom.NodeTreeSanitizer,
        'angular.filter',
        'angular.perf',
        'perf_api',
        'angular.directive',
        'angular.ui.demo',
        'angular.ui.demo.accordion',
        'angular.ui.demo.alert',
        'angular.ui.demo.buttons',
        'angular.ui.demo.carousel',
        'angular.ui.demo.collapse',
        'angular.ui.demo.dropdown_toggle',
//        'angular.ui.demo.modal',
        'angular.ui.demo.position',
        'angular.ui.demo.rating',
//        'angular.ui.demo.tabs',
        'angular.ui.demo.transition',

        'dart.dom.html.HtmlDocument',
        'angular.ui.demo.app_initializer.prod',
        'angular.ui.demo.app_initializer.dev'
    ],
    metaTargets: const [
        NgInjectableService,
        NgComponent,
        NgDirective,
        NgController,
        NgFilter,
        NgAttr,
        NgOneWay,
        NgOneWayOneTime,
        NgTwoWay,
        NgCallback,
        InjectableService
    ],
    override: '*'
)
import 'dart:mirrors';


final _logger = new Logger('main');

void main() {
  startQuickLogging();
  Logger.root.level = Level.FINEST;
  _logger.fine('start app');


  ngBootstrap(module: new AngularUiDemoModule());
}

class AngularUiDemoModule extends Module {
  AngularUiDemoModule() {
    _logger.fine('AngularUiDemoModule');

    type(BaBindHtmlDirective);
    type(HeadController);
    type(MainController);

    type(AccordionDemoController);
    type(AlertDemoController);
    //type(ButtonsDemoController);
    //type(CarouselDemoController);
    type(CollapseDemoController);
    type(DropdownToggleDemoController);
    //type(ModalDemoController);
    //type(PositionDemoController);
    type(RatingDemoController);
    //type(TimoutDemoController);
    //type(TabsDemoController);

    type(UiElementList);
    type(Package);
    factory(dom.HtmlDocument, (Injector inj) => dom.document);

    install(new AngularUIModule());

    init.createParser(this);

    String someValue='AnularUiDemoApp';
//    type(Profiler, implementedBy: Profiler); // comment out to enable profiling ???
    String allModules = 'AngularUiDemoApp';
  }
}
