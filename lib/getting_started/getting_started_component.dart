library angular.ui.demo.getting_started;

import 'package:angular/angular.dart';
import 'package:logging/logging.dart' show Logger;

final _log = new Logger('angular.ui.demo.getting_started');

@Component(
    selector: 'getting-started-component',
    templateUrl: 'getting_started_component.html',
    useShadowDom: false
)
class GettingStartedComponent {
  GettingStartedComponent() {
    _log.fine('GettingStartedComponent');
  }
}