library angular.ui.demo.alert;

import 'package:angular/angular.dart';

import 'package:logging/logging.dart' show Logger;
final _log = new Logger('demo.alert');


@NgController(
    selector: '[ng-controller=alert-demo-ctrl]',
    publishAs: 'ctrl')
class AlertDemoController {

  List<Map<String,String>> alerts = [
    { 'type': 'danger', 'msg': 'Oh snap! Change a few things up and try submitting again.' },
    { 'type': 'success', 'msg': 'Well done! You successfully read this important alert message.' }
  ];

  AlertDemoController() {
    _log.fine('AlertDemoController');
  }

  void addAlert() {
    alerts.add({'msg': 'Another alert!'});
  }


  void closeAlert(int index) {
    if(alerts.length > index) {
      alerts.removeAt(index);
    } else {
      _log.fine('AlertDemoController.closeAlert($index (invalid!))');
    }
  }
}