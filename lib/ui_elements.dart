library angular.ui.demo.ui_elements;

import 'dart:html' as dom;
import 'dart:async' show Completer, Future;
import 'dart:math' show Random;

import "package:angular/angular.dart";
import 'package:markdown/markdown.dart' as markdown;
import 'package:logging/logging.dart' show Logger;
import 'package:angular_ui/utils/utils.dart' show compile;

final _log = new Logger('angular.ui.demo.ui_elements');

@Injectable()
class Docs {
  final String html;
  final String md;
  final String dart;

  Docs({this.html: 'html', this.md: 'md', this.dart: 'dart'});
}

@Injectable()
class UiElement {
  final String package;
  final String displayName;
  final String componentName;
  Docs docs;

  UiElement(this.package, this.displayName, this.componentName) {
    readSource().then((Docs d) => docs = d);
  }

  Future<Docs> readSource() {
    var completer = new Completer<Docs>();

    Future.wait([
      dom.HttpRequest.getString('packages/angular_ui_demo/${this.package}/demo.html').then((e) => e, onError: (e) => ''),
      dom.HttpRequest.getString('packages/angular_ui_demo/${this.package}/README.md').then((e) => e, onError: (e) => ''),
      dom.HttpRequest.getString('packages/angular_ui_demo/${this.package}/demo.dart').then((e) => e, onError: (e) => '')
    ]).then((List<String> results) {
      String html = results[0];
      String md = results[1];
      String dart = results[2];

      completer.complete(new Docs(html: html, md: markdown.markdownToHtml(md), dart: dart));
    });

    return completer.future;
  }

  @override
  int get hashCode => this.package.hashCode;


  bool operator==(other) {
    if (other is! UiElement) {
      return false;
    }
    return (other.package == package);
  }
}

@Injectable()
class UiElementList implements List<UiElement> {
  static final List<UiElement> _modules = [
     new UiElement('accordion', 'Accordion', '<accordion-demo></accordion-demo>'),
     new UiElement('alert', 'Alert', '<alert-demo></alert-demo>'),
     new UiElement('button', 'Button', '<button-demo></button-demo>'),
     new UiElement('carousel', 'Carousel', '<carousel-demo></carousel-demo>'),
     new UiElement('collapse', 'Collapse', '<collapse-demo></collapse-demo>'),
//     new UiElement('datepicker', 'Datepicker', '<datepicker-demo></datepicker-demo>'),
     new UiElement('dropdown_toggle', 'Dropdown Toggle', '<dropdown-toggle-demo></dropdown-toggle-demo>'),
     new UiElement('modal_embedded', 'Modal from embedded template', '<modal-embedded-demo></modal-embedded-demo>'),
     new UiElement('modal_external', 'Modal from external template', '<modal-external-demo></modal-external-demo>'),
//     new UiElement('pagination', 'Pagination'),
//     new UiElement('popover', 'Popover'),
//     new UiElement('progressbar', 'Progressbar'),
//     new UiElement('rating', 'Rating'),
//     new UiElement('tabs' , 'Tabs'),
//     new UiElement('timepicker', 'Timepicker'),
//     new UiElement('tooltip', 'Tooltip'),
//     new UiElement('typeahead', 'Typeahead')
     ];

  UiElement operator [](int index) {
    return _modules[index];
  }

  void operator []=(int index, value) {
    _modules[index] = value;
  }

  void add(value) {
    _modules.add(value);
  }

  void addAll(Iterable iterable) {
    _modules.addAll(iterable);
  }

  bool any(bool test(element)) {
    return _modules.any(test);
  }

  Map<int, UiElement> asMap() {
    return _modules.asMap();
  }

  void clear() {
    _modules.clear();
  }

  bool contains(Object element) {
    return _modules.contains(element);
  }

  UiElement elementAt(int index) {
    return _modules.elementAt(index);
  }

  bool every(bool test(element)) {
    return _modules.every(test);
  }

  Iterable<UiElement> expand(Iterable f(element)) {
    return _modules.expand(f);
  }

  void fillRange(int start, int end, [fillValue]) {
    _modules.fillRange(start, end, fillValue);
  }

  UiElement get first => _modules.first;

  UiElement firstWhere(bool test(element), {orElse()}) {
    return _modules.firstWhere(test, orElse: orElse);
  }

  UiElement fold(initialValue, combine(previousValue, element)) {
    return _modules.fold(initialValue, combine);
  }

  void forEach(void f(element)) {
    _modules.forEach(f);
  }

  Iterable<UiElement> getRange(int start, int end) {
    return _modules.getRange(start, end);
  }

  int indexOf(element, [int start = 0]) {
    return _modules.indexOf(element, start);
  }

  void insert(int index, element) {
    _modules.insert(index, element);
  }

  void insertAll(int index, Iterable iterable) {
    _modules.insertAll(index, iterable);
  }

  bool get isEmpty => _modules.isEmpty;

  bool get isNotEmpty => _modules.isNotEmpty;

  Iterator<UiElement> get iterator => _modules.iterator;

  String join([String separator = ""]) {
    return _modules.join(separator);
  }

  UiElement get last => _modules.last;

  int lastIndexOf(element, [int start]) {
    return _modules.lastIndexOf(element, start);
  }

  UiElement lastWhere(bool test(element), {orElse()}) {
    return _modules.lastWhere(test, orElse: orElse);
  }

  int get length => _modules.length;

  void set length(int newLength) {
    _modules.length = newLength;
  }

  Iterable<UiElement> map(f(element)) {
    return _modules.map(f);
  }

  UiElement reduce(combine(value, element)) {
    return _modules.reduce(combine);
  }

  bool remove(Object value) {
    return _modules.remove(value);
  }

  UiElement removeAt(int index) {
    return _modules.removeAt(index);
  }

  UiElement removeLast() {
    return _modules.removeLast();
  }

  void removeRange(int start, int end) {
    _modules.removeRange(start, end);
  }

  void removeWhere(bool test(element)) {
    _modules.removeWhere(test);
  }

  void replaceRange(int start, int end, Iterable replacement) {
    _modules.replaceRange(start, end, replacement);
  }

  void retainWhere(bool test(element)) {
    _modules.retainWhere(test);
  }

  Iterable<UiElement> get reversed => _modules.reversed;

  void setAll(int index, Iterable iterable) {
    _modules.setAll(index, iterable);
  }

  void setRange(int start, int end, Iterable iterable, [int skipCount = 0]) {
    _modules.setRange(start, end, iterable, skipCount);
  }

  void shuffle([Random random]) {
    _modules.shuffle(random);
  }

  UiElement get single => _modules.single;

  UiElement singleWhere(bool test(element)) {
    return _modules.singleWhere(test);
  }

  Iterable<UiElement> skip(int n) {
    return _modules.skip(n);
  }

  Iterable<UiElement> skipWhile(bool test(value)) {
    return _modules.skipWhile(test);
  }

  void sort([int compare(a, b)]) {
    _modules.sort(compare);
  }

  List<UiElement> sublist(int start, [int end]) {
    return _modules.sublist(start);
  }

  Iterable<UiElement> take(int n) {
    return _modules.take(n);
  }

  Iterable<UiElement> takeWhile(bool test(value)) {
    return _modules.takeWhile(test);
  }

  List<UiElement> toList({bool growable: true}) {
    return _modules.toList(growable: growable);
  }

  Set<UiElement> toSet() {
    return _modules.toSet();
  }

  Iterable<UiElement> where(bool test(element)) {
    return _modules.where(test);
  }
}

@Decorator(selector: '[inject]')
class InjectorDecorator implements AttachAware {
  
  @NgOneWay('inject')
  String html;
  
  final Compiler compiler;
  final Injector injector;
  final dom.Element element;
  
  InjectorDecorator(this.element, this.compiler, this.injector) {
    _log.fine('InjectorDecorator');
  }
  
  void attach() {
    dom.Element el = compile(html, injector, compiler);
    element.append(el);
  }
}