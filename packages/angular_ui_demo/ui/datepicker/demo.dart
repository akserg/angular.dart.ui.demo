library angular.ui.demo.datepicker;

import 'dart:html' as dom;
import 'package:angular/angular.dart';

import 'package:logging/logging.dart' show Logger;
final _log = new Logger('angular.ui.demo.datepicker');

@Component(
  selector: 'datepicker-demo',
  templateUrl: 'demo.html',
  exportExpressions: const ['dt', 'showWeeks', 'minDate', 'opened', 'dateOptions', 
                            'formats', 'format', 'today', 'toggleWeeks', 'clear', 
                            'disabled', 'toggleMin', 'open'],
  useShadowDom: false)
class DatepickerDemoComponent {

  var dt;
  bool showWeeks = true;
  DateTime minDate;
  bool opened = false;
  Map dateOptions = {
   'year-format': '\'yy\'',
   'starting-day': 1
  };
  List formats = ['dd-MMMM-yyyy', 'yyyy/MM/dd', 'shortDate'];
  String format;

  DatepickerDemoComponent() {
    _log.fine('DatepickerDemoComponent');
    toggleMin();
    format = formats[0];
  }
  
  void today() {
    dt = new DateTime.now();
  }
  
  void toggleWeeks() {
    showWeeks = !showWeeks;
  }
  
  void clear() {
    dt = null;
  }
  
  bool disabled(DateTime date, mode) {
    return ( mode == 'day' && ( date.day == 0 || date.day == 6 ) );
  }
  
  void toggleMin() {
    minDate = minDate == null ? new DateTime.now() : null;
  }
  
  void open(dom.Event event) {
    event.preventDefault();
    event.stopPropagation();

    opened = true;
  }
}