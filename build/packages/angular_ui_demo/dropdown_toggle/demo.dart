library angular.ui.demo.dropdown_toggle;

import 'package:angular/angular.dart' as ng;

import 'package:logging/logging.dart' show Logger;
final _log = new Logger('demo.dropdown_toggle');

@ng.NgController(
    selector: '[ng-controller=dropdown-toggle-demo-ctrl]',
    publishAs: 'ctrl')
class DropdownToggleDemoController {
  List<String> items = [
                        "The first choice!",
                        "And another choice for you.",
                        "but wait! A third!"
                        ];
  DropdownToggleController() {
    _log.fine('DropdownToggleDemoController');
  }
}