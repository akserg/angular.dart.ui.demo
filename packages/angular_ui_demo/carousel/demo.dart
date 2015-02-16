library angular.ui.demo.carousel;

import 'package:angular/angular.dart';

import 'package:logging/logging.dart' show Logger;
final _log = new Logger('angular.ui.demo.carousel');

@Component(
  selector: 'carousel-demo',
  templateUrl: 'demo.html',
  exportExpressions: const ['myIntervalAsString', 'myInterval', 'slides', 'image', 'text', 'addSlide'],
  useShadowDom: false)
class CarouselDemoComponent {

  // workaround until number conversion is supported by Angular
  String _myInterval = '5000';
  String get myIntervalAsString => _myInterval;
  set myIntervalAsString(String newVal) {
    _myInterval = newVal;
    try {
      myInterval = int.parse(newVal);
    } catch(e){}
  }
  // workaround end

  int myInterval = 5000;
  List<Map<String,dynamic>> slides = [];

  CarouselDemoComponent() {
    _log.fine('CarouselDemoComponent');

    for (int i = 0; i < 4; i++) {
      addSlide();
    }
  }

  void addSlide() {
    int newWidth = 600 + slides.length;
    slides.add({
      'image': 'http://placekitten.com/${newWidth}/300',
      'text': ['More','Extra','Lots of','Surplus'][slides.length % 4] + ' ' +
        ['Cats', 'Kittys', 'Felines', 'Cutes'][slides.length % 4]
    });
  }
}