library angular.ui.demo.modal2;

import 'package:angular/angular.dart';
import 'package:angular_ui/angular_ui.dart';

import 'package:logging/logging.dart' show Logger;
final _log = new Logger('angular.ui.demo.modal');

@Component(
  selector: 'modal-external-demo',
  templateUrl: 'demo.html',
  exportExpressions: const ["backdrop", "openUrl"],
  useShadowDom: false)
class ModalExternalDemoComponent implements ScopeAware {
  List<String> items = ["Java", "Dart", "JavaScript", "Ruby"];
    
  String selected;
  String tmp;
  String other;
  
  Modal modal;
  ModalInstance modalInstance;
  Scope scope;
  
  String backdrop = 'true';
  
  ModalExternalDemoComponent(this.modal) {
    _log.fine('ModalExternalDemoComponent');
  }
  
  void openUrl(String templateUrl) {
    modalInstance = modal.open(new ModalOptions(templateUrl:templateUrl, backdrop: backdrop), scope);
    
    modalInstance.result
      ..then((value) {
        selected = value;
        print('Closed with selection $value');
      }, onError:(e) {
        print('Dismissed with $e');
      });
  }
  
  void ok(sel) {
    modalInstance.close(sel);
  }
}