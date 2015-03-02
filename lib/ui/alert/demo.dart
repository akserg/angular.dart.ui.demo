library angular.ui.demo.alert;

import 'package:angular/angular.dart';

import 'package:logging/logging.dart' show Logger;
final _log = new Logger('angular.ui.demo.alert');


@Component(
  selector: 'alert-demo',
  templateUrl: 'demo.html',
  exportExpressions: const ['alerts', 'type', 'msg', 'addAlert', 'closeAlert'],
  useShadowDom: false)
class AlertDemoComponent {

  List<Map<String,String>> alerts = [
    { 'type': 'danger', 'msg': 'Oh snap! Change a few things up and try submitting again.' },
    { 'type': 'success', 'msg': 'Well done! You successfully read this important alert message.' }
  ];

  AlertDemoComponent() {
    _log.fine('AlertDemoComponent');
  }

  void addAlert() {
    alerts.add({'msg': 'Another alert!'});
  }


  void closeAlert(int index) {
    if(alerts.length > index) {
      alerts.removeAt(index);
    } else {
      _log.fine('AlertDemoComponent.closeAlert($index (invalid!))');
    }
  }
}