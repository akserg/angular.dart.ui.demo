library angular.ui.demo.header;

import 'package:angular/angular.dart';
import 'package:logging/logging.dart' show Logger;
import 'package:angular_ui_demo/ui_elements.dart';

final _log = new Logger('angular.ui.demo.header');

@Component(
    selector: 'header-component',
    templateUrl: 'header_component.html',
    exportExpressions: const ['modules', 'isCollapsed', 'displayName'],
    useShadowDom: false
)
class HeaderComponent implements ScopeAware {
  
  Scope scope;
  
  final UiElementList modules;
  bool isCollapsed = true;
  
  HeaderComponent(this.modules) {
    _log.fine('HeaderComponent');
  }
}