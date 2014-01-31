part of angular.ui.demo.app;

@NgController(
    selector: '[ng-controller=head-ctrl]',
    publishAs: 'ctrl'
)
class HeadController {
  UiElementList _modules;
  HeadController(this._modules) {
    _log.fine('HeadController');
  }
  String someValue = 'HEAD';

  String get allModules => _modules.map((e) => e.name).join(', ');
}