part of angular.ui.demo.app;

@NgController(
    selector: '[ng-controller=main-ctrl]',
    publishAs: 'ctrl')
class MainController {
  Scope _scope;
  final Http _http;
  final dom.HtmlDocument _document;
//  final ModalComponent _modal;
  final OrderByFilter _orderByFilter;
  final UiElementList _modules;
  final Package _package;
  bool isCollapsed = true; // TODO why did the page throw an exception if this property is missing.

  MainController(this._scope, this._http, this._document, /*this._modal,*/ this._orderByFilter,
      this._modules, this._package) {
    _log.fine('MainController');
  }

  String get allModules => _modules.map((e) => e.name).join(', ');

  Package get package => _package;

  //String someValue = 'BODY';

  List<UiElement> get modules => _modules;

//  double i = 5.0;
  final String ngVersion = '0.9.1';
  final String bsVersion = '2.3.1';
  final String pkgVersion = '0.0.1';
  final String favVersion = '3.2.1';

  void showBuildModal() {
    //var modalInstance =
  }
}