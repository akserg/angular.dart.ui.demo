library angular.ui.demo.collapse;

import 'package:angular/angular.dart';

import 'package:logging/logging.dart' show Logger;
final _log = new Logger('angular.ui.demo.collapse');

@Component(
  selector: 'collapse-demo',
  templateUrl: 'demo.html',
  exportExpressions: const ['isCollapsed'],
  useShadowDom: false)
class CollapseDemoComponent {
  CollapseDemoComponent() {
    _log.fine('CollapseDemoComponent');
  }

  bool isCollapsed = false;
}