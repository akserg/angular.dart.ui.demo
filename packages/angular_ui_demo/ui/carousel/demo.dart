library angular.ui.demo.carousel;

import 'package:angular/angular.dart';

import 'package:logging/logging.dart' show Logger;
final _log = new Logger('angular.ui.demo.carousel');

@Component(
  selector: 'carousel-demo',
  templateUrl: 'demo.html',
  exportExpressions: const ['myInterval', 'slides', 'image', 'text', 'addSlide'],
  useShadowDom: false)
class CarouselDemoComponent {

  int _myInterval = 2;
  set myInterval(int value) {
    if (value == null) {
      value = 0;
    }
    _myInterval = value;
  }
  int get myInterval {
    return _myInterval;
  }
  
  List<Map<String,dynamic>> slides = [];

  CarouselDemoComponent() {
    _log.fine('CarouselDemoComponent');

    for (int i = 0; i < 4; i++) {
      addSlide();
    }
  }

  void addSlide() {
    int newWidth = 601 + slides.length;
    slides.add({
      'image': 'http://placekitten.com/${newWidth}/300',
      'text': ['More','Extra','Lots of','Surplus'][slides.length % 4] + ' ' +
        ['Cats', 'Kittys', 'Felines', 'Cutes'][slides.length % 4]
    });
  }
}