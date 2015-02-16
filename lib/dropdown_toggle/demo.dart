library angular.ui.demo.dropdown_toggle;

import 'package:angular/angular.dart';

import 'package:logging/logging.dart' show Logger;
final _log = new Logger('angular.ui.demo.dropdown_toggle');

@Component(
  selector: 'dropdown-toggle-demo',
  templateUrl: 'demo.html',
  exportExpressions: const ['items'],
  useShadowDom: false)
class DropdownToggleDemoComponent {
  
  List<String> items = [
    "The first choice!",
    "And another choice for you.",
    "but wait! A third!"
  ];
  
  DropdownToggleDemoComponent() {
    _log.fine('DropdownToggleDemoComponent');
  }
}