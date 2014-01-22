//library angular.ui.all_elements;
//
//import 'dart:html' as dom;
//import 'package:angular/angular.dart';
//
//import 'injectable_service.dart';
//
//// Used by dart2js to indicate which targets are being reflected on, to allow
//// tree-shaking.
//@MirrorsUsed(
//    targets: const [
//        'angular',
//        'angular.core',
//        'angular.core.dom',
//        'angular.core.parser',
//        //'angular.core.parser.syntax',
//        'angular.routing',
//        dom.NodeTreeSanitizer,
//        'angular.filter',
//        'angular.perf',
//        'angular.directive',
//        'angular.ui.all_elements',
//
//        'angular.ui.accordion',
//        'angular.ui.alert',
//        'angular.ui.buttons',
//        'angular.ui.carousel',
//        'angular.ui.collapse',
//        'angular.ui.dropdown_toggle',
//        'angular.ui.position',
//        'angular.ui.rating',
//        'angular.ui.timeout',
//        'angular.ui.transition',
////        'angular.ui.tabs'
//    ],
//    metaTargets: const [
//        NgInjectableService,
//        NgComponent,
//        NgDirective,
//        NgController,
//        NgFilter,
//        NgAttr,
//        NgOneWay,
//        NgOneWayOneTime,
//        NgTwoWay,
//        NgCallback,
//        InjectableService,
//    ],
//    override: '*'
//)
//import 'dart:mirrors';
//
//export 'injectable_service.dart';
//
//import 'package:angular_ui/accordion/accordion.dart';
//import 'package:angular_ui/alert.dart';
//import 'package:angular_ui/buttons.dart';
//import 'package:angular_ui/carousel.dart';
//import 'package:angular_ui/collapse.dart';
//import 'package:angular_ui/dropdown_toggle.dart';
//import 'package:angular_ui/position.dart';
//import 'package:angular_ui/rating/rating.dart';
//import 'package:angular_ui/timeout.dart';
//import 'package:angular_ui/transition.dart';
//

//export 'package:angular_ui/accordion/accordion.dart';
//export 'package:angular_ui/alert.dart';
//export 'package:angular_ui/buttons.dart';
//export 'package:angular_ui/carousel.dart';
//export 'package:angular_ui/collapse.dart';
//export 'package:angular_ui/dropdown_toggle.dart';
//export 'package:angular_ui/position.dart';
//export 'package:angular_ui/rating/rating.dart';
//export 'package:angular_ui/timeout.dart';
//export 'package:angular_ui/transition.dart';
//export 'package:angular_ui/tabs/cd tabs.dart';

//class AllElementsModule extends Module {
//  AllElementsModule() {
//    install(new AccordionModule());
//    install(new AlertModule());
//    install(new ButtonModule()); // shouldn't this be ButtonsModule
//    install(new CarouselModule());
//    install(new CollapseModule());
//    install(new DropdownToggleModule());
//    install(new PositionModule());
//    install(new RatingModule());
//    install(new TimeoutModule());
//    install(new TransitionModule());
//  //  install(new TabsModule());
//  }
//}
//
