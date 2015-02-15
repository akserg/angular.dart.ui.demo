library angular.ui.demo.module;

import 'package:angular/angular.dart';
import 'package:logging/logging.dart' show Logger;
import 'package:angular_ui_demo/ui_elements.dart';

final _log = new Logger('angular.ui.demo.module');

@Component(
    selector: 'module-component',
    templateUrl: 'module_component.html',
    exportExpressions: const ['modules', 'name', 'displayName', 'docs', 'html', 'dart', 'md', 'componentName', 'oneAtATime'],
    useShadowDom: false
)
class ModuleComponent implements ScopeAware {
  
  Scope scope;
  
  final UiElementList modules;
  
  ModuleComponent(this.modules) {
    _log.fine('ModuleComponent');
  }
}