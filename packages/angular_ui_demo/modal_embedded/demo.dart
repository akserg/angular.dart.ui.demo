library angular.ui.demo.modal;

import 'package:angular/angular.dart';
import 'package:angular_ui/angular_ui.dart';

import 'package:logging/logging.dart' show Logger;
final _log = new Logger('angular.ui.demo.modal');

@Component(
  selector: 'modal-embedded-demo',
  templateUrl: 'demo.html',
  exportExpressions: const ["backdrop", "tmp", "ok"],
  useShadowDom: false)
class ModalEmbeddedDemoComponent implements ScopeAware {
  List<String> items = ["1111", "2222", "3333", "4444"];
  String selected;
  String tmp;
  
  Modal modal;
  ModalInstance modalInstance;
  Scope scope;
  
  String backdrop = 'true';
  
  String template = """
<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title">I'm a modal!</h4>
</div>
<div class="modal-body">
  <ul>
    <li ng-repeat="item in items">
      <a ng-click="tmp = item">{{ item }}</a>
    </li>
  </ul>
  Selected: <b>{{tmp}}</b>
</div>
<div class="modal-footer">
  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
  <button type="button" class="btn btn-primary" ng-click="ok(tmp)">OK</button>
</div>
""";
  
  ModalEmbeddedDemoComponent(this.modal) {
    _log.fine('ModalEmbeddedDemoComponent');
  }
  
  ModalInstance getModalInstance() {
    return modal.open(new ModalOptions(template:template, backdrop: backdrop), scope);
  }
  
  void open() {
    modalInstance = getModalInstance();
    
    modalInstance.opened
      ..then((v) {
        print('Opened');
      }, onError: (e) {
        print('Open error is $e');
      });
    
    // Override close to add you own functionality 
    modalInstance.close = (result) { 
      selected = result;
      print('Closed with selection $selected');
      modal.hide();
    };
    // Override dismiss to add you own functionality 
    modalInstance.dismiss = (String reason) { 
      print('Dismissed with $reason');
      modal.hide();
   };
  }
  
  void ok(sel) {
    modalInstance.close(sel);
  }
}