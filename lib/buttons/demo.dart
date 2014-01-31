library angular.ui.demo.buttons;

import 'package:angular/angular.dart';

import 'package:logging/logging.dart' show Logger;
final _log = new Logger('demo.alert');


@NgController(
    selector: '[ng-controller=buttons-demo-ctrl]',
    publishAs: 'ctrl')
class ButtonsDemoController {

  int singleModel = 1;
  String radioModel = 'Middle';
  Map<String,bool> checkModel = {
    'left': false,
    'middle': true,
    'right': false
  };

  String get checkModelString => checkModel.toString();

  ButtonsDemoController() {
    _log.fine('ButtonsDemoController');
  }

}