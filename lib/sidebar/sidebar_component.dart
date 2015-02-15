library angular.ui.demo.sidebar;

import 'package:angular/angular.dart';
import 'package:logging/logging.dart' show Logger;
import 'package:angular_ui_demo/ui_elements.dart';

final _log = new Logger('angular.ui.demo.sidebar');

@Component(
    selector: 'sidebar-component',
    templateUrl: 'sidebar_component.html',
    exportExpressions: const ['modules', 'displayName', 'docs', 'html', 'dart', 'md'],
    useShadowDom: false
)
class SidebarComponent implements ScopeAware {
  
  Scope scope;
  
  final UiElementList modules;
  
  SidebarComponent(this.modules) {
    _log.fine('SidebarComponent');
  }
}