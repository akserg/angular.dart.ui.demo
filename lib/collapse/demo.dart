library angular.ui.demo.collapse;

import 'package:angular/angular.dart' as ng;

import 'package:logging/logging.dart' show Logger;
final _logger = new Logger('demo.collapse');

@ng.NgController(
    selector: '[ng-controller=collapse-demo-ctrl]',
    publishAs: 'ctrl')
class CollapseDemoController {
  CollapseDemoController() {
    _logger.fine('CollapseDemoController');
  }

  bool isCollapsed = false;
}