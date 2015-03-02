library angular.ui.demo.button;

import 'package:angular/angular.dart';

import 'package:logging/logging.dart' show Logger;
final _log = new Logger('angular.ui.demo.button');


@Component(
  selector: 'button-demo',
  templateUrl: 'demo.html',
  exportExpressions: const ['singleModel', 'radioModel', 'checkModel', 'checkModelString'],
  useShadowDom: false)
class ButtonDemoComponent {

  int singleModel = 1;
  String radioModel = 'Middle';
  Map<String,bool> checkModel = {
    'left': false,
    'middle': true,
    'right': false
  };

  String get checkModelString => checkModel.toString();

  ButtonDemoComponent() {
    _log.fine('ButtonDemoComponent');
  }

}