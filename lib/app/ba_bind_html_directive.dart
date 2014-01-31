part of angular.ui.demo.app;

/**
 * Creates a binding that will innerHTML the result of evaluating the
 * `expression` bound to `ng-bind-html` into the current element in a secure
 * way.  This expression must evaluate to a string.  The innerHTML-ed content
 * will be sanitized using a default [NodeValidator] constructed as `new
 * dom.NodeValidatorBuilder.common()`.  In a future version, when Strict
 * Contextual Escaping support has been added to Angular.dart, this directive
 * will allow one to bypass the sanitizaton and innerHTML arbitrary trusted
 * HTML.
 *
 * Example:
 *
 *     <div ba-bind-html="htmlVar"></div>
 */
@NgDirective(
  selector: '[ba-bind-html]',
  map: const {'baBindHtml': '=>value'})
class BaBindHtmlDirective {
  // The default HTML sanitizer.  Eventually, we'll make this configurable or
  // use an optionally loaded `$sanitize` service.
  static dom.NodeValidator validator;

  dom.Element _element;
  Compiler _compiler;
  Scope _scope;
  Injector _injector;

  BaBindHtmlDirective(this._element, this._scope, this._injector, this._compiler) {
    _log.fine('BaBindHtmlDirective');
    List<String> ngDirectiveAttributes = ['ng-class', 'ng-change', 'ng-click', 'ng-controller', 'ng-disabled', 'ng-hide', 'ng-init', 'ng-model', 'ng-options', 'ng-repeat', 'ng-required', 'ng-show', 'ng-src'];
    ngDirectiveAttributes.addAll(['accordion-demo-ctrl', 'rating-demo-ctrl']);
    dom.NodeValidatorBuilder nvb = new dom.NodeValidatorBuilder.common()
      ..allowImages()
      ..allowElement('A', attributes: ['href']..addAll(ngDirectiveAttributes))
      ..allowElement('BUTTON', attributes: ['btn-radio', 'btn-checkbox', 'btn-checkbox-false', 'btn-checkbox-true', 'popover', 'popover-animation', 'popover-placement', 'popover-title', 'popover-trigger', 'tooltip']..addAll(ngDirectiveAttributes))
      ..allowElement('DIV', attributes: ['collapse', 'style']..addAll(ngDirectiveAttributes))
      ..allowElement('FORM', attributes: ['role']..addAll(ngDirectiveAttributes))
      ..allowElement('I', attributes: []..addAll(ngDirectiveAttributes))
      ..allowElement('IMG', attributes: ['style']..addAll(ngDirectiveAttributes))
      ..allowElement('INPUT', attributes: ['close-text', 'date-disabled', 'datepicker-popup', 'datepicker-options', 'is-open', 'popover', 'popover-trigger', 'tooltip', 'tooltip-placement', 'tooltip-trigger', 'typeahead', 'typeahead-loading', 'typeahead-template', 'typeahead-template-url']..addAll(ngDirectiveAttributes))
      ..allowElement('LI', attributes: []..addAll(ngDirectiveAttributes))
      ..allowElement('PRE', attributes: ['style']..addAll(ngDirectiveAttributes))
      ..allowElement('SCRIPT', attributes: ['type']..addAll(ngDirectiveAttributes))
      ..allowElement('SELECT', attributes: []..addAll(ngDirectiveAttributes))
      ..allowElement('SPAN', attributes: ['style', 'tooltip', 'tooltip-animation', 'tooltip-html', 'tooltip-html-unsafe', 'tooltip-placement', 'tooltip-popup-delay']..addAll(ngDirectiveAttributes))

      ..allowCustomElement('ACCORDION', attributes: ['close-others'])
      ..allowCustomElement('ACCORDION-GROUP', attributes: ['is-open', 'heading']..addAll(ngDirectiveAttributes))
      ..allowCustomElement('ACCORDION-HEADING', attributes: []..addAll(ngDirectiveAttributes))
      ..allowCustomElement('ALERT', attributes: ['close', 'type']..addAll(ngDirectiveAttributes))
      ..allowCustomElement('CAROUSEL', attributes: ['interval']..addAll(ngDirectiveAttributes))
      ..allowCustomElement('SLIDE', attributes: ['active']..addAll(ngDirectiveAttributes))
      ..allowCustomElement('DATEPICKER', attributes: ['min', 'show-weeks']..addAll(ngDirectiveAttributes))
      ..allowCustomElement('PAGINATION', attributes: ['boundary-links', 'direction-links', 'first-text', 'last-text', 'max-size', 'next-text', 'num-pages', 'page', 'previous-text', 'total-items', 'rotate']..addAll(ngDirectiveAttributes))
      ..allowCustomElement('PAGER', attributes: ['page', 'total-items']..addAll(ngDirectiveAttributes))
      ..allowCustomElement('BAR', attributes: ['type', 'value']..addAll(ngDirectiveAttributes))
      ..allowCustomElement('PROGRESSBAR', attributes: ['animate', 'max', 'type', 'value']..addAll(ngDirectiveAttributes))
      ..allowCustomElement('RATING', attributes: ['max', 'on-hover', 'on-leave', 'readonly', 'state-off', 'state-on', 'rating-states', 'value']..addAll(ngDirectiveAttributes))
      ..allowCustomElement('TABSET', attributes: ['justified', 'type', 'vertical']..addAll(ngDirectiveAttributes))
      ..allowCustomElement('TAB', attributes: ['active', 'disabled', 'heading', 'select']..addAll(ngDirectiveAttributes))
      ..allowCustomElement('TAB-HEADING', attributes: []..addAll(ngDirectiveAttributes))
      ..allowCustomElement('TIMEPICKER', attributes: ['hour-step', 'minute-step', 'show-meridian']..addAll(ngDirectiveAttributes))

      ;


    BaBindHtmlDirective.validator = nvb;
  }

  /**
   * Parsed expression from the `ng-bind-html` attribute.  The result of this
   * expression is innerHTML'd according to the rules specified in this class'
   * documention.
   */
  set value(value) {
    _element.setInnerHtml((value == null ? '' : value.toString()),
                                             validator: validator);
    if(value != null) {
      BlockFactory template = _compiler(_element.children);
      Block block = template.bind(_injector)(_scope);
    }
  }
}
