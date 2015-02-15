library angular.ui.demo.jumbotron;

import 'package:angular/angular.dart';
import 'package:logging/logging.dart' show Logger;

final _log = new Logger('angular.ui.demo.jumbotron');

@Component(
    selector: 'jumbotron-component',
    templateUrl: 'jumbotron_component.html',
    useShadowDom: false
)
class JumbotronComponent {
  JumbotronComponent() {
    _log.fine('JumbotronComponent');
  }
}