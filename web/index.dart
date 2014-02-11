library angular.ui.demo;


import 'dart:html' as dom;
import 'dart:async' as async;
import 'package:angular/angular.dart';
import 'package:angular/utils.dart';
import 'package:logging/logging.dart' show Logger, Level, hierarchicalLoggingEnabled;
import 'package:logging_handlers/logging_handlers_shared.dart';

import 'package:angular_ui_demo/app/app.dart';
import 'package:angular_ui/angular_ui.dart';
import 'package:angular_ui/utils/injectable_service.dart'; // unused import is analyzer bug, it's referenced in @MirrorsUsed

// import 'package:di/di.dart';
// import 'package:perf_api/perf_api.dart';

import 'package:angular_ui_demo/accordion/demo.dart';
import 'package:angular_ui_demo/alert/demo.dart';
import 'package:angular_ui_demo/buttons/demo.dart';
import 'package:angular_ui_demo/carousel/demo.dart';
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
    ],
    metaTargets: const [
       InjectableService
    ],
    override: '*'
)
import 'dart:mirrors';


final _log = new Logger('main');

void main() {
  hierarchicalLoggingEnabled = true;
  Logger.root.onRecord.listen(new LogPrintHandler()..printFunc = (e) => dom.window.console.debug(e.toString()));
  Logger.root.level = Level.FINEST;
  _log.fine('start app');


  ngBootstrap(module: new AngularUiDemoModule());
}

class AngularUiDemoModule extends Module {
  AngularUiDemoModule() {
    _log.fine('AngularUiDemoModule');

    type(BaBindHtmlDirective);
    type(HeadController);
    type(MainController);

    type(AccordionDemoController);
    type(AlertDemoController);
    type(ButtonsDemoController);
    type(CarouselDemoController);
    type(CollapseDemoController);
    type(DropdownToggleDemoController);
    //type(ModalDemoController);
    //type(PositionDemoController);
    type(RatingDemoController);
    //type(TabsDemoController);

    type(InputTextLikeDirective); // remove when bug is fixed - see above

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
