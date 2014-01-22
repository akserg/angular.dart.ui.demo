library angular.ui.demo.accordion;

import 'package:angular/angular.dart';

import 'package:logging/logging.dart' show Logger;
final _logger = new Logger('demo.accordion');

@NgController(
    selector: '[ng-controller=accordion-demo-ctrl]',
    publishAs: 'ctrl')
class AccordionDemoController {
  AccordionDemoController() {
    _logger.fine('AccordionDemoController');
  }

  bool oneAtATime = true;

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