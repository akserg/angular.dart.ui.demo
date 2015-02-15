library angular.ui.demo.accordion;

import 'package:angular/angular.dart';
import 'package:logging/logging.dart' show Logger;

final _log = new Logger('angular.ui.demo.accordion');

@Component(
  selector: 'accordion-demo',
  templateUrl: 'demo.html',
  exportExpressions: const ['oneAtATime', 'isOpen', 'groups', 'items', 'title', 'content', 'addItem'],
  useShadowDom: false)
class AccordionDemoComponent implements ScopeAware {
  
  Scope scope;

  bool oneAtATime = true;
  bool isOpen = false;
  
  AccordionDemoComponent() {
    _log.fine('AccordionDemo');
  }

  final List<Map<String, String>> groups = [
      {
        'title': "Dynamic Group Header - 1",
        'content': "Dynamic Group Body - 1"
      },
      {
        'title': "Dynamic Group Header - 2",
        'content': "Dynamic Group Body - 2"
      }];

  List<String> items = ['Item 1', 'Item 2', 'Item 3'];

  void addItem() {
    var newItemNo = items.length + 1;
    items.add('Item ${newItemNo}');
  }
}