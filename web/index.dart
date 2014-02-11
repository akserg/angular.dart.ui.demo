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
//import 'initializer_prod.dart' as init; // Use in prod/test.
import 'initializer_dev.dart' as init; // Use in dev.

// Used by dart2js to indicate which targets are being reflected on, to allow
// tree-shaking.

@MirrorsUsed(
    targets: const [
//        'angular',
//        'angular.core',
//        'angular.core.dom',
//        'angular.core.parser',
//        'angular.core.parser.dynamic_parser',
//        'angular.core.parser.lexer',
//        'angular.core.parser.static_parser', // is this necessary
//        dom.NodeTreeSanitizer,
//        'angular.directive',
//        'angular.filter',
//        'angular.perf',
//        'angular.routing',
//        'perf_api',
//        'angular.ui.demo',
//        'angular.ui.demo.accordion',
//        'angular.ui.demo.alert',
//        'angular.ui.demo.buttons',
//        'angular.ui.demo.carousel',
//        'angular.ui.demo.collapse',
//        'angular.ui.demo.dropdown_toggle',
////        'angular.ui.demo.modal',
//        'angular.ui.demo.position',
//        'angular.ui.demo.rating',
////        'angular.ui.demo.tabs',
//        'angular.ui.demo.transition',
//
//        'dart.dom.html.HtmlDocument',
//        'angular.ui.demo.app_initializer.prod',
//        'angular.ui.demo.app_initializer.dev'
    ],
    metaTargets: const [
//        NgInjectableService,
//        NgComponent,
//        NgDirective,
//        NgController,
//        NgFilter, // maybe not necessary
//        NgAttr,   // - " -
//        NgOneWay, // - " -
//        NgOneWayOneTime, // - " -
//        NgTwoWay, // - " -
//        NgCallback, // - " -
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

// remove this class when the bugfix is deployed
// should be available with next update (after 0.9.5+2)
@NgDirective(selector: 'textarea[ng-model]')
@NgDirective(selector: 'input[type=text][ng-model]')
@NgDirective(selector: 'input[type=password][ng-model]')
@NgDirective(selector: 'input[type=url][ng-model]')
@NgDirective(selector: 'input[type=email][ng-model]')
@NgDirective(selector: 'input[type=number][ng-model]')
class InputTextLikeDirective {
  dom.Element inputElement;
  NgModel ngModel;
  Scope scope;
  String _inputType;

  get typedValue => (inputElement as dynamic).value;
  set typedValue(value) => (inputElement as dynamic).value = (value == null) ? '' : value.toString();

  InputTextLikeDirective(dom.Element this.inputElement, NgModel this.ngModel, Scope this.scope) {
    ngModel.render = (value) {
      if (value == null) value = '';

      var currentValue = typedValue;
      if (value != currentValue && !(value is num && currentValue is num && value.isNaN && currentValue.isNaN)) {
        typedValue =  value;
      }
    };
    inputElement.onChange.listen(relaxFnArgs(processValue));
    inputElement.onKeyDown.listen((e) {
      new async.Timer(Duration.ZERO, processValue);
      scope.$skipAutoDigest();
    });
  }

  processValue() {
    ngModel.validate();
    var value = typedValue;
    if (value != ngModel.viewValue) {
      scope.$apply(() => ngModel.viewValue = value);
    }
  }
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
