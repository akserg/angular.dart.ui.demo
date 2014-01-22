library parser_gen;

import 'package:angular/angular.dart';
import 'package:angular/core/parser/utils.dart';

typedef Function FilterLookup(String filterName);
// Found 210 expressions
StaticParserFunctions functions(FilterLookup filters)
    => new StaticParserFunctions(
           buildEval(filters), buildAssign(filters));

Map<String, Function> buildEval(FilterLookup filters) {
  return {
    "dynamicPopover": (scope) => _dynamicPopover(scope),
    "dynamicPopoverTitle": (scope) => _dynamicPopoverTitle(scope),
    "changed()": (scope) => ensureFunction(_changed(scope), "changed")(),
    "mytime": (scope) => _mytime(scope),
    "mytime ": (scope) => _mytime(scope),
    "hstep": (scope) => _hstep(scope),
    "mstep": (scope) => _mstep(scope),
    "toggleMode()": (scope) => ensureFunction(_toggleMode(scope), "toggleMode")(),
    "update()": (scope) => ensureFunction(_update(scope), "update")(),
    "clear()": (scope) => ensureFunction(_clear(scope), "clear")(),
    " item ": (scope) => _item(scope),
    " selected.item ": (scope) => _item(_selected(scope)),
    "open()": (scope) => ensureFunction(_open(scope), "open")(),
    "selected": (scope) => _selected(scope),
    " selected ": (scope) => _selected(scope),
    "dt  ": (scope) => _dt(scope),
    "dt": (scope) => _dt(scope),
    "format": (scope) => _format(scope),
    "true": (scope) => true,
    "open(\$event)": (scope) => ensureFunction(_open(scope), "open")(_$event(scope)),
    "today()": (scope) => ensureFunction(_today(scope), "today")(),
    "dt = '2009-08-24'": (scope) => _set$dt(scope, r'2009-08-24'),
    "toggleWeeks()": (scope) => ensureFunction(_toggleWeeks(scope), "toggleWeeks")(),
    "toggleMin()": (scope) => ensureFunction(_toggleMin(scope), "toggleMin")(),
    "ctrl.oneAtATime": (scope) => _oneAtATime(_ctrl(scope)),
    "group['title']": (scope) => getKeyed(_group(scope), r'title'),
    "ctrl.groups": (scope) => _groups(_ctrl(scope)),
    "group.content": (scope) => _content(_group(scope)),
    "ctrl.addItem()": (scope) => ensureFunction(_addItem(_ctrl(scope)), "addItem")(),
    "ctrl.items": (scope) => _items(_ctrl(scope)),
    "item": (scope) => _item(scope),
    "isOpen": (scope) => _isOpen(scope),
    "{'glyphicon-chevron-down': isOpen, 'glyphicon-chevron-right': !isOpen}": (scope) => { 'glyphicon-chevron-down': _isOpen(scope), 'glyphicon-chevron-right': !toBool(_isOpen(scope)) },
    "ctrl.tabs[0]['active'] = true": (scope) => setKeyed(getKeyed(_tabs(_ctrl(scope)), 0), r'active', true),
    "ctrl.tabs[1]['active'] = true": (scope) => setKeyed(getKeyed(_tabs(_ctrl(scope)), 1), r'active', true),
    "ctrl.tabs[1]['disabled'] = !ctrl.tabs[1]['disabled']": (scope) => setKeyed(getKeyed(_tabs(_ctrl(scope)), 1), r'disabled', !toBool(getKeyed(getKeyed(_tabs(_ctrl(scope)), 1), r'disabled'))),
    "tab['title']": (scope) => getKeyed(_tab(scope), r'title'),
    "ctrl.tabs": (scope) => _tabs(_ctrl(scope)),
    "tab['content']": (scope) => getKeyed(_tab(scope), r'content'),
    "dynamicTooltipText": (scope) => _dynamicTooltipText(scope),
    "dynamicTooltip": (scope) => _dynamicTooltip(scope),
    "htmlTooltip": (scope) => _htmlTooltip(scope),
    "currentPage": (scope) => _currentPage(scope),
    "setPage(3)": (scope) => ensureFunction(_setPage(scope), "setPage")(3),
    "bigCurrentPage": (scope) => _bigCurrentPage(scope),
    "numPages": (scope) => _numPages(scope),
    "singleModel": (scope) => _singleModel(scope),
    "checkModel": (scope) => _checkModel(scope),
    "checkModel.left": (scope) => _left(_checkModel(scope)),
    "checkModel.middle": (scope) => _middle(_checkModel(scope)),
    "checkModel.right": (scope) => _right(_checkModel(scope)),
    "radioModel": (scope) => _radioModel(scope),
    "match.model.flag": (scope) => _flag(_model(_match(scope))),
    "selected ": (scope) => _selected(scope),
    "asyncSelected ": (scope) => _asyncSelected(scope),
    "asyncSelected": (scope) => _asyncSelected(scope),
    "loadingLocations": (scope) => _loadingLocations(scope),
    "customSelected": (scope) => _customSelected(scope),
    "slides": (scope) => _slides(scope),
    "slide.active": (scope) => _active(_slide(scope)),
    "slide.image": (scope) => _image(_slide(scope)),
    "\$index": (scope) => _$index(scope),
    "slide.text": (scope) => _text(_slide(scope)),
    "addSlide()": (scope) => ensureFunction(_addSlide(scope), "addSlide")(),
    "myInterval": (scope) => _myInterval(scope),
    "choice": (scope) => _choice(scope),
    "random()": (scope) => ensureFunction(_random(scope), "random")(),
    "dynamic": (scope) => _dynamic(scope),
    "max": (scope) => _max(scope),
    "type": (scope) => _type(scope),
    "showWarning": (scope) => _showWarning(scope),
    "randomStacked()": (scope) => ensureFunction(_randomStacked(scope), "randomStacked")(),
    "bar.type": (scope) => _type(_bar(scope)),
    "stacked": (scope) => _stacked(scope),
    "bar.value < 5": (scope) => (_value(_bar(scope)) < 5),
    "bar.value": (scope) => _value(_bar(scope)),
    "ctrl.alerts": (scope) => _alerts(_ctrl(scope)),
    "alert['type']": (scope) => getKeyed(_alert(scope), r'type'),
    "ctrl.closeAlert(\$index)": (scope) => ensureFunction(_closeAlert(_ctrl(scope)), "closeAlert")(_$index(scope)),
    "alert['msg']": (scope) => getKeyed(_alert(scope), r'msg'),
    "ctrl.addAlert()": (scope) => ensureFunction(_addAlert(_ctrl(scope)), "addAlert")(),
    "ctrl.max": (scope) => _max(_ctrl(scope)),
    "ctrl.rate": (scope) => _rate(_ctrl(scope)),
    "ctrl.isReadonly": (scope) => _isReadonly(_ctrl(scope)),
    "ctrl.hoveringOver(value)": (scope) => ensureFunction(_hoveringOver(_ctrl(scope)), "hoveringOver")(_value(scope)),
    "ctrl.overStar = null": (scope) => _set$overStar(_ensure$ctrl(scope), null),
    "{'label-warning': ctrl.percent < 30, 'label-info': ctrl.percent >= 30 && ctrl.percent < 70, 'label-success': ctrl.percent >= 70 }": (scope) => { 'label-warning': (_percent(_ctrl(scope)) < 30), 'label-info': (toBool((_percent(_ctrl(scope)) >= 30)) && toBool((_percent(_ctrl(scope)) < 70))), 'label-success': (_percent(_ctrl(scope)) >= 70) },
    "ctrl.overStar == null || ctrl.isReadonly": (scope) => (toBool((_overStar(_ctrl(scope)) == null)) || toBool(_isReadonly(_ctrl(scope)))),
    "ctrl.percent": (scope) => _percent(_ctrl(scope)),
    "ctrl.overStar != null ? ctrl.overStar : \"none\"": (scope) => toBool((_overStar(_ctrl(scope)) != null)) ? _overStar(_ctrl(scope)) : r'none',
    "ctrl.rate = 0": (scope) => _set$rate(_ensure$ctrl(scope), 0),
    "ctrl.isReadonly = !ctrl.isReadonly": (scope) => _set$isReadonly(_ensure$ctrl(scope), !toBool(_isReadonly(_ctrl(scope)))),
    "15": (scope) => 15,
    "5": (scope) => 5,
    "'glyphicon-ok-sign'": (scope) => r'glyphicon-ok-sign',
    "'glyphicon-ok-circle'": (scope) => r'glyphicon-ok-circle',
    "2": (scope) => 2,
    "ctrl.ratingStates": (scope) => _ratingStates(_ctrl(scope)),
    "ctrl.isCollapsed = !ctrl.isCollapsed": (scope) => _set$isCollapsed(_ensure$ctrl(scope), !toBool(_isCollapsed(_ctrl(scope)))),
    "ctrl.isCollapsed": (scope) => _isCollapsed(_ctrl(scope)),
    "ctrl.isOpen = !ctrl.isOpen": (scope) => _set$isOpen(_ensure$ctrl(scope), !toBool(_isOpen(_ctrl(scope)))),
    "ctrl.heading": (scope) => _heading(_ctrl(scope)),
    "!ctrl.isOpen": (scope) => !toBool(_isOpen(_ctrl(scope))),
    "\"alert-\" + (t.type != null ? t.type : \"warning\")": (scope) => autoConvertAdd(r'alert-', toBool((_type(_t(scope)) != null)) ? _type(_t(scope)) : r'warning'),
    "t.closeHandler()": (scope) => ensureFunction(_closeHandler(_t(scope)), "closeHandler")(),
    "t.showable": (scope) => _showable(_t(scope)),
    "ctrl.reset()": (scope) => ensureFunction(_reset(_ctrl(scope)), "reset")(),
    "ctrl.range": (scope) => _range(_ctrl(scope)),
    "ctrl.stateClass(\$index, r)": (scope) => ensureFunction(_stateClass(_ctrl(scope)), "stateClass")(_$index(scope), _r(scope)),
    "ctrl.rate(\$index + 1)": (scope) => ensureFunction(_rate(_ctrl(scope)), "rate")(autoConvertAdd(_$index(scope), 1)),
    "ctrl.enter(\$index + 1)": (scope) => ensureFunction(_enter(_ctrl(scope)), "enter")(autoConvertAdd(_$index(scope), 1)),
    "messages": (scope) => _messages(scope),
    "": (scope) {
      var result, last;
      return result;
    },
    "value": (scope) => _value(scope),
    "close": (scope) => _close(scope),
    "isCloseOthers": (scope) => _isCloseOthers(scope),
    "btnRadioAttr": (scope) => _btnRadioAttr(scope),
    "btnCheckboxTrue": (scope) => _btnCheckboxTrue(scope),
    "btnCheckboxFalse": (scope) => _btnCheckboxFalse(scope),
    "c.pause()": (scope) => ensureFunction(_pause(_c(scope)), "pause")(),
    "c.play()": (scope) => ensureFunction(_play(_c(scope)), "play")(),
    "c.slides().length > 1": (scope) => (_length(ensureFunction(_slides(_c(scope)), "slides")()) > 1),
    "c.slides()": (scope) => ensureFunction(_slides(_c(scope)), "slides")(),
    "{active: c.isActive(slide)}": (scope) => { 'active': ensureFunction(_isActive(_c(scope)), "isActive")(_slide(scope)) },
    "c.select(slide)": (scope) => ensureFunction(_select(_c(scope)), "select")(_slide(scope)),
    "c.prev()": (scope) => ensureFunction(_prev(_c(scope)), "prev")(),
    "c.next()": (scope) => ensureFunction(_next(_c(scope)), "next")(),
    "active": (scope) => _active(scope),
    "{\n    'active': s.leaving || (s.active && !s.entering),\n    'prev': (s.next || s.active) && s.direction=='prev',\n    'next': (s.next || s.active) && s.direction=='next',\n    'right': s.direction=='prev',\n    'left': s.direction=='next'\n  }": (scope) => { 'active': (toBool(_leaving(_s(scope))) || toBool((toBool(_active(_s(scope))) && toBool(!toBool(_entering(_s(scope))))))), 'prev': (toBool((toBool(_next(_s(scope))) || toBool(_active(_s(scope))))) && toBool((_direction(_s(scope)) == r'prev'))), 'next': (toBool((toBool(_next(_s(scope))) || toBool(_active(_s(scope))))) && toBool((_direction(_s(scope)) == r'next'))), 'right': (_direction(_s(scope)) == r'prev'), 'left': (_direction(_s(scope)) == r'next') },
    "collapseAttr": (scope) => _collapseAttr(scope),
    "isReadonly": (scope) => _isReadonly(scope),
    "onHover": (scope) => _onHover(scope),
    "onLeave": (scope) => _onLeave(scope),
    "ratingStates": (scope) => _ratingStates(scope),
    "stateOn": (scope) => _stateOn(scope),
    "stateOff": (scope) => _stateOff(scope),
    "bind": (scope) => _bind(scope),
    "valueExpression": (scope) => _valueExpression(scope),
    "onAbort": (scope) => _onAbort(scope),
    "onBeforeCopy": (scope) => _onBeforeCopy(scope),
    "onBeforeCut": (scope) => _onBeforeCut(scope),
    "onBeforePaste": (scope) => _onBeforePaste(scope),
    "onBlur": (scope) => _onBlur(scope),
    "onChange": (scope) => _onChange(scope),
    "onClick": (scope) => _onClick(scope),
    "onContextMenu": (scope) => _onContextMenu(scope),
    "onCopy": (scope) => _onCopy(scope),
    "onCut": (scope) => _onCut(scope),
    "onDoubleClick": (scope) => _onDoubleClick(scope),
    "onDrag": (scope) => _onDrag(scope),
    "onDragEnd": (scope) => _onDragEnd(scope),
    "onDragEnter": (scope) => _onDragEnter(scope),
    "onDragLeave": (scope) => _onDragLeave(scope),
    "onDragOver": (scope) => _onDragOver(scope),
    "onDragStart": (scope) => _onDragStart(scope),
    "onDrop": (scope) => _onDrop(scope),
    "onError": (scope) => _onError(scope),
    "onFocus": (scope) => _onFocus(scope),
    "onFullscreenChange": (scope) => _onFullscreenChange(scope),
    "onFullscreenError": (scope) => _onFullscreenError(scope),
    "onInput": (scope) => _onInput(scope),
    "onInvalid": (scope) => _onInvalid(scope),
    "onKeyDown": (scope) => _onKeyDown(scope),
    "onKeyPress": (scope) => _onKeyPress(scope),
    "onKeyUp": (scope) => _onKeyUp(scope),
    "onLoad": (scope) => _onLoad(scope),
    "onMouseDown": (scope) => _onMouseDown(scope),
    "onMouseEnter": (scope) => _onMouseEnter(scope),
    "onMouseLeave": (scope) => _onMouseLeave(scope),
    "onMouseMove": (scope) => _onMouseMove(scope),
    "onMouseOut": (scope) => _onMouseOut(scope),
    "onMouseOver": (scope) => _onMouseOver(scope),
    "onMouseUp": (scope) => _onMouseUp(scope),
    "onMouseWheel": (scope) => _onMouseWheel(scope),
    "onPaste": (scope) => _onPaste(scope),
    "onReset": (scope) => _onReset(scope),
    "onScroll": (scope) => _onScroll(scope),
    "onSearch": (scope) => _onSearch(scope),
    "onSelect": (scope) => _onSelect(scope),
    "onSelectStart": (scope) => _onSelectStart(scope),
    "onSubmit": (scope) => _onSubmit(scope),
    "onTouchCancel": (scope) => _onTouchCancel(scope),
    "onTouchEnd": (scope) => _onTouchEnd(scope),
    "onTouchEnter": (scope) => _onTouchEnter(scope),
    "onTouchLeave": (scope) => _onTouchLeave(scope),
    "onTouchMove": (scope) => _onTouchMove(scope),
    "onTouchStart": (scope) => _onTouchStart(scope),
    "onTransitionEnd": (scope) => _onTransitionEnd(scope),
    "condition": (scope) => _condition(scope),
    "url": (scope) => _url(scope),
    "model": (scope) => _model(scope),
    "count": (scope) => _count(scope),
    "expression": (scope) => _expression(scope),
    "templateUrl": (scope) => _templateUrl(scope),
    "hide": (scope) => _hide(scope),
    "show": (scope) => _show(scope),
    "checked": (scope) => _checked(scope),
    "disabled": (scope) => _disabled(scope),
    "multiple": (scope) => _multiple(scope),
    "open": (scope) => _open(scope),
    "readonly": (scope) => _readonly(scope),
    "required": (scope) => _required(scope),
    "href": (scope) => _href(scope),
    "src": (scope) => _src(scope),
    "srcset": (scope) => _srcset(scope),
    "styleExpression": (scope) => _styleExpression(scope),
    "ngValue": (scope) => _ngValue(scope),
    "routeName": (scope) => _routeName(scope),
    "heading": (scope) => _heading(scope),
    "null": (scope) => null
  };
}

Map<String, Function> buildAssign(FilterLookup filters) {
  return {
    "dynamicPopover": (scope, value) => _set$dynamicPopover(scope, value),
    "dynamicPopoverTitle": (scope, value) => _set$dynamicPopoverTitle(scope, value),
    "mytime": (scope, value) => _set$mytime(scope, value),
    "mytime ": (scope, value) => _set$mytime(scope, value),
    "hstep": (scope, value) => _set$hstep(scope, value),
    "mstep": (scope, value) => _set$mstep(scope, value),
    " item ": (scope, value) => _set$item(scope, value),
    " selected.item ": (scope, value) => _set$item(_ensure$selected(scope), value),
    "selected": (scope, value) => _set$selected(scope, value),
    " selected ": (scope, value) => _set$selected(scope, value),
    "dt  ": (scope, value) => _set$dt(scope, value),
    "dt": (scope, value) => _set$dt(scope, value),
    "format": (scope, value) => _set$format(scope, value),
    "ctrl.oneAtATime": (scope, value) => _set$oneAtATime(_ensure$ctrl(scope), value),
    "group['title']": (scope, value) => setKeyed(_group(scope), r'title', value),
    "ctrl.groups": (scope, value) => _set$groups(_ensure$ctrl(scope), value),
    "group.content": (scope, value) => _set$content(_ensure$group(scope), value),
    "ctrl.items": (scope, value) => _set$items(_ensure$ctrl(scope), value),
    "item": (scope, value) => _set$item(scope, value),
    "isOpen": (scope, value) => _set$isOpen(scope, value),
    "tab['title']": (scope, value) => setKeyed(_tab(scope), r'title', value),
    "ctrl.tabs": (scope, value) => _set$tabs(_ensure$ctrl(scope), value),
    "tab['content']": (scope, value) => setKeyed(_tab(scope), r'content', value),
    "dynamicTooltipText": (scope, value) => _set$dynamicTooltipText(scope, value),
    "dynamicTooltip": (scope, value) => _set$dynamicTooltip(scope, value),
    "htmlTooltip": (scope, value) => _set$htmlTooltip(scope, value),
    "currentPage": (scope, value) => _set$currentPage(scope, value),
    "bigCurrentPage": (scope, value) => _set$bigCurrentPage(scope, value),
    "numPages": (scope, value) => _set$numPages(scope, value),
    "singleModel": (scope, value) => _set$singleModel(scope, value),
    "checkModel": (scope, value) => _set$checkModel(scope, value),
    "checkModel.left": (scope, value) => _set$left(_ensure$checkModel(scope), value),
    "checkModel.middle": (scope, value) => _set$middle(_ensure$checkModel(scope), value),
    "checkModel.right": (scope, value) => _set$right(_ensure$checkModel(scope), value),
    "radioModel": (scope, value) => _set$radioModel(scope, value),
    "match.model.flag": (scope, value) => _set$flag(_ensure$model(_ensure$match(scope)), value),
    "selected ": (scope, value) => _set$selected(scope, value),
    "asyncSelected ": (scope, value) => _set$asyncSelected(scope, value),
    "asyncSelected": (scope, value) => _set$asyncSelected(scope, value),
    "loadingLocations": (scope, value) => _set$loadingLocations(scope, value),
    "customSelected": (scope, value) => _set$customSelected(scope, value),
    "slides": (scope, value) => _set$slides(scope, value),
    "slide.active": (scope, value) => _set$active(_ensure$slide(scope), value),
    "slide.image": (scope, value) => _set$image(_ensure$slide(scope), value),
    "\$index": (scope, value) => _set$$index(scope, value),
    "slide.text": (scope, value) => _set$text(_ensure$slide(scope), value),
    "myInterval": (scope, value) => _set$myInterval(scope, value),
    "choice": (scope, value) => _set$choice(scope, value),
    "dynamic": (scope, value) => _set$dynamic(scope, value),
    "max": (scope, value) => _set$max(scope, value),
    "type": (scope, value) => _set$type(scope, value),
    "showWarning": (scope, value) => _set$showWarning(scope, value),
    "bar.type": (scope, value) => _set$type(_ensure$bar(scope), value),
    "stacked": (scope, value) => _set$stacked(scope, value),
    "bar.value": (scope, value) => _set$value(_ensure$bar(scope), value),
    "ctrl.alerts": (scope, value) => _set$alerts(_ensure$ctrl(scope), value),
    "alert['type']": (scope, value) => setKeyed(_alert(scope), r'type', value),
    "alert['msg']": (scope, value) => setKeyed(_alert(scope), r'msg', value),
    "ctrl.max": (scope, value) => _set$max(_ensure$ctrl(scope), value),
    "ctrl.rate": (scope, value) => _set$rate(_ensure$ctrl(scope), value),
    "ctrl.isReadonly": (scope, value) => _set$isReadonly(_ensure$ctrl(scope), value),
    "ctrl.percent": (scope, value) => _set$percent(_ensure$ctrl(scope), value),
    "ctrl.ratingStates": (scope, value) => _set$ratingStates(_ensure$ctrl(scope), value),
    "ctrl.isCollapsed": (scope, value) => _set$isCollapsed(_ensure$ctrl(scope), value),
    "ctrl.heading": (scope, value) => _set$heading(_ensure$ctrl(scope), value),
    "t.showable": (scope, value) => _set$showable(_ensure$t(scope), value),
    "ctrl.range": (scope, value) => _set$range(_ensure$ctrl(scope), value),
    "messages": (scope, value) => _set$messages(scope, value),
    "value": (scope, value) => _set$value(scope, value),
    "close": (scope, value) => _set$close(scope, value),
    "isCloseOthers": (scope, value) => _set$isCloseOthers(scope, value),
    "btnRadioAttr": (scope, value) => _set$btnRadioAttr(scope, value),
    "btnCheckboxTrue": (scope, value) => _set$btnCheckboxTrue(scope, value),
    "btnCheckboxFalse": (scope, value) => _set$btnCheckboxFalse(scope, value),
    "active": (scope, value) => _set$active(scope, value),
    "collapseAttr": (scope, value) => _set$collapseAttr(scope, value),
    "isReadonly": (scope, value) => _set$isReadonly(scope, value),
    "onHover": (scope, value) => _set$onHover(scope, value),
    "onLeave": (scope, value) => _set$onLeave(scope, value),
    "ratingStates": (scope, value) => _set$ratingStates(scope, value),
    "stateOn": (scope, value) => _set$stateOn(scope, value),
    "stateOff": (scope, value) => _set$stateOff(scope, value),
    "bind": (scope, value) => _set$bind(scope, value),
    "valueExpression": (scope, value) => _set$valueExpression(scope, value),
    "onAbort": (scope, value) => _set$onAbort(scope, value),
    "onBeforeCopy": (scope, value) => _set$onBeforeCopy(scope, value),
    "onBeforeCut": (scope, value) => _set$onBeforeCut(scope, value),
    "onBeforePaste": (scope, value) => _set$onBeforePaste(scope, value),
    "onBlur": (scope, value) => _set$onBlur(scope, value),
    "onChange": (scope, value) => _set$onChange(scope, value),
    "onClick": (scope, value) => _set$onClick(scope, value),
    "onContextMenu": (scope, value) => _set$onContextMenu(scope, value),
    "onCopy": (scope, value) => _set$onCopy(scope, value),
    "onCut": (scope, value) => _set$onCut(scope, value),
    "onDoubleClick": (scope, value) => _set$onDoubleClick(scope, value),
    "onDrag": (scope, value) => _set$onDrag(scope, value),
    "onDragEnd": (scope, value) => _set$onDragEnd(scope, value),
    "onDragEnter": (scope, value) => _set$onDragEnter(scope, value),
    "onDragLeave": (scope, value) => _set$onDragLeave(scope, value),
    "onDragOver": (scope, value) => _set$onDragOver(scope, value),
    "onDragStart": (scope, value) => _set$onDragStart(scope, value),
    "onDrop": (scope, value) => _set$onDrop(scope, value),
    "onError": (scope, value) => _set$onError(scope, value),
    "onFocus": (scope, value) => _set$onFocus(scope, value),
    "onFullscreenChange": (scope, value) => _set$onFullscreenChange(scope, value),
    "onFullscreenError": (scope, value) => _set$onFullscreenError(scope, value),
    "onInput": (scope, value) => _set$onInput(scope, value),
    "onInvalid": (scope, value) => _set$onInvalid(scope, value),
    "onKeyDown": (scope, value) => _set$onKeyDown(scope, value),
    "onKeyPress": (scope, value) => _set$onKeyPress(scope, value),
    "onKeyUp": (scope, value) => _set$onKeyUp(scope, value),
    "onLoad": (scope, value) => _set$onLoad(scope, value),
    "onMouseDown": (scope, value) => _set$onMouseDown(scope, value),
    "onMouseEnter": (scope, value) => _set$onMouseEnter(scope, value),
    "onMouseLeave": (scope, value) => _set$onMouseLeave(scope, value),
    "onMouseMove": (scope, value) => _set$onMouseMove(scope, value),
    "onMouseOut": (scope, value) => _set$onMouseOut(scope, value),
    "onMouseOver": (scope, value) => _set$onMouseOver(scope, value),
    "onMouseUp": (scope, value) => _set$onMouseUp(scope, value),
    "onMouseWheel": (scope, value) => _set$onMouseWheel(scope, value),
    "onPaste": (scope, value) => _set$onPaste(scope, value),
    "onReset": (scope, value) => _set$onReset(scope, value),
    "onScroll": (scope, value) => _set$onScroll(scope, value),
    "onSearch": (scope, value) => _set$onSearch(scope, value),
    "onSelect": (scope, value) => _set$onSelect(scope, value),
    "onSelectStart": (scope, value) => _set$onSelectStart(scope, value),
    "onSubmit": (scope, value) => _set$onSubmit(scope, value),
    "onTouchCancel": (scope, value) => _set$onTouchCancel(scope, value),
    "onTouchEnd": (scope, value) => _set$onTouchEnd(scope, value),
    "onTouchEnter": (scope, value) => _set$onTouchEnter(scope, value),
    "onTouchLeave": (scope, value) => _set$onTouchLeave(scope, value),
    "onTouchMove": (scope, value) => _set$onTouchMove(scope, value),
    "onTouchStart": (scope, value) => _set$onTouchStart(scope, value),
    "onTransitionEnd": (scope, value) => _set$onTransitionEnd(scope, value),
    "condition": (scope, value) => _set$condition(scope, value),
    "url": (scope, value) => _set$url(scope, value),
    "model": (scope, value) => _set$model(scope, value),
    "count": (scope, value) => _set$count(scope, value),
    "expression": (scope, value) => _set$expression(scope, value),
    "templateUrl": (scope, value) => _set$templateUrl(scope, value),
    "hide": (scope, value) => _set$hide(scope, value),
    "show": (scope, value) => _set$show(scope, value),
    "checked": (scope, value) => _set$checked(scope, value),
    "disabled": (scope, value) => _set$disabled(scope, value),
    "multiple": (scope, value) => _set$multiple(scope, value),
    "open": (scope, value) => _set$open(scope, value),
    "readonly": (scope, value) => _set$readonly(scope, value),
    "required": (scope, value) => _set$required(scope, value),
    "href": (scope, value) => _set$href(scope, value),
    "src": (scope, value) => _set$src(scope, value),
    "srcset": (scope, value) => _set$srcset(scope, value),
    "styleExpression": (scope, value) => _set$styleExpression(scope, value),
    "ngValue": (scope, value) => _set$ngValue(scope, value),
    "routeName": (scope, value) => _set$routeName(scope, value),
    "heading": (scope, value) => _set$heading(scope, value)
  };
}

_dynamicPopover(o) {
  if (o == null) return null;
  return (o is Map) ? o["dynamicPopover"] : o.dynamicPopover;
}

_dynamicPopoverTitle(o) {
  if (o == null) return null;
  return (o is Map) ? o["dynamicPopoverTitle"] : o.dynamicPopoverTitle;
}

_changed(o) {
  if (o == null) return null;
  return (o is Map) ? o["changed"] : o.changed;
}

_mytime(o) {
  if (o == null) return null;
  return (o is Map) ? o["mytime"] : o.mytime;
}

_hstep(o) {
  if (o == null) return null;
  return (o is Map) ? o["hstep"] : o.hstep;
}

_mstep(o) {
  if (o == null) return null;
  return (o is Map) ? o["mstep"] : o.mstep;
}

_toggleMode(o) {
  if (o == null) return null;
  return (o is Map) ? o["toggleMode"] : o.toggleMode;
}

_update(o) {
  if (o == null) return null;
  return (o is Map) ? o["update"] : o.update;
}

_clear(o) {
  if (o == null) return null;
  return (o is Map) ? o["clear"] : o.clear;
}

_item(o) {
  if (o == null) return null;
  return (o is Map) ? o["item"] : o.item;
}

_selected(o) {
  if (o == null) return null;
  return (o is Map) ? o["selected"] : o.selected;
}

_open(o) {
  if (o == null) return null;
  return (o is Map) ? o["open"] : o.open;
}

_dt(o) {
  if (o == null) return null;
  return (o is Map) ? o["dt"] : o.dt;
}

_format(o) {
  if (o == null) return null;
  return (o is Map) ? o["format"] : o.format;
}

_$event(o) {
  if (o == null) return null;
  return (o is Map) ? o["\$event"] : o.$event;
}

_today(o) {
  if (o == null) return null;
  return (o is Map) ? o["today"] : o.today;
}

_toggleWeeks(o) {
  if (o == null) return null;
  return (o is Map) ? o["toggleWeeks"] : o.toggleWeeks;
}

_toggleMin(o) {
  if (o == null) return null;
  return (o is Map) ? o["toggleMin"] : o.toggleMin;
}

_ctrl(o) {
  if (o == null) return null;
  return (o is Map) ? o["ctrl"] : o.ctrl;
}

_oneAtATime(o) {
  if (o == null) return null;
  return (o is Map) ? o["oneAtATime"] : o.oneAtATime;
}

_group(o) {
  if (o == null) return null;
  return (o is Map) ? o["group"] : o.group;
}

_groups(o) {
  if (o == null) return null;
  return (o is Map) ? o["groups"] : o.groups;
}

_content(o) {
  if (o == null) return null;
  return (o is Map) ? o["content"] : o.content;
}

_addItem(o) {
  if (o == null) return null;
  return (o is Map) ? o["addItem"] : o.addItem;
}

_items(o) {
  if (o == null) return null;
  return (o is Map) ? o["items"] : o.items;
}

_isOpen(o) {
  if (o == null) return null;
  return (o is Map) ? o["isOpen"] : o.isOpen;
}

_tabs(o) {
  if (o == null) return null;
  return (o is Map) ? o["tabs"] : o.tabs;
}

_tab(o) {
  if (o == null) return null;
  return (o is Map) ? o["tab"] : o.tab;
}

_dynamicTooltipText(o) {
  if (o == null) return null;
  return (o is Map) ? o["dynamicTooltipText"] : o.dynamicTooltipText;
}

_dynamicTooltip(o) {
  if (o == null) return null;
  return (o is Map) ? o["dynamicTooltip"] : o.dynamicTooltip;
}

_htmlTooltip(o) {
  if (o == null) return null;
  return (o is Map) ? o["htmlTooltip"] : o.htmlTooltip;
}

_currentPage(o) {
  if (o == null) return null;
  return (o is Map) ? o["currentPage"] : o.currentPage;
}

_setPage(o) {
  if (o == null) return null;
  return (o is Map) ? o["setPage"] : o.setPage;
}

_bigCurrentPage(o) {
  if (o == null) return null;
  return (o is Map) ? o["bigCurrentPage"] : o.bigCurrentPage;
}

_numPages(o) {
  if (o == null) return null;
  return (o is Map) ? o["numPages"] : o.numPages;
}

_singleModel(o) {
  if (o == null) return null;
  return (o is Map) ? o["singleModel"] : o.singleModel;
}

_checkModel(o) {
  if (o == null) return null;
  return (o is Map) ? o["checkModel"] : o.checkModel;
}

_left(o) {
  if (o == null) return null;
  return (o is Map) ? o["left"] : o.left;
}

_middle(o) {
  if (o == null) return null;
  return (o is Map) ? o["middle"] : o.middle;
}

_right(o) {
  if (o == null) return null;
  return (o is Map) ? o["right"] : o.right;
}

_radioModel(o) {
  if (o == null) return null;
  return (o is Map) ? o["radioModel"] : o.radioModel;
}

_match(o) {
  if (o == null) return null;
  return (o is Map) ? o["match"] : o.match;
}

_model(o) {
  if (o == null) return null;
  return (o is Map) ? o["model"] : o.model;
}

_flag(o) {
  if (o == null) return null;
  return (o is Map) ? o["flag"] : o.flag;
}

_asyncSelected(o) {
  if (o == null) return null;
  return (o is Map) ? o["asyncSelected"] : o.asyncSelected;
}

_loadingLocations(o) {
  if (o == null) return null;
  return (o is Map) ? o["loadingLocations"] : o.loadingLocations;
}

_customSelected(o) {
  if (o == null) return null;
  return (o is Map) ? o["customSelected"] : o.customSelected;
}

_slides(o) {
  if (o == null) return null;
  return (o is Map) ? o["slides"] : o.slides;
}

_slide(o) {
  if (o == null) return null;
  return (o is Map) ? o["slide"] : o.slide;
}

_active(o) {
  if (o == null) return null;
  return (o is Map) ? o["active"] : o.active;
}

_image(o) {
  if (o == null) return null;
  return (o is Map) ? o["image"] : o.image;
}

_$index(o) {
  if (o == null) return null;
  return (o is Map) ? o["\$index"] : o.$index;
}

_text(o) {
  if (o == null) return null;
  return (o is Map) ? o["text"] : o.text;
}

_addSlide(o) {
  if (o == null) return null;
  return (o is Map) ? o["addSlide"] : o.addSlide;
}

_myInterval(o) {
  if (o == null) return null;
  return (o is Map) ? o["myInterval"] : o.myInterval;
}

_choice(o) {
  if (o == null) return null;
  return (o is Map) ? o["choice"] : o.choice;
}

_random(o) {
  if (o == null) return null;
  return (o is Map) ? o["random"] : o.random;
}

_dynamic(o) {
  if (o == null) return null;
  return (o is Map) ? o["dynamic"] : o.dynamic;
}

_max(o) {
  if (o == null) return null;
  return (o is Map) ? o["max"] : o.max;
}

_type(o) {
  if (o == null) return null;
  return (o is Map) ? o["type"] : o.type;
}

_showWarning(o) {
  if (o == null) return null;
  return (o is Map) ? o["showWarning"] : o.showWarning;
}

_randomStacked(o) {
  if (o == null) return null;
  return (o is Map) ? o["randomStacked"] : o.randomStacked;
}

_bar(o) {
  if (o == null) return null;
  return (o is Map) ? o["bar"] : o.bar;
}

_stacked(o) {
  if (o == null) return null;
  return (o is Map) ? o["stacked"] : o.stacked;
}

_value(o) {
  if (o == null) return null;
  return (o is Map) ? o["value"] : o.value;
}

_alerts(o) {
  if (o == null) return null;
  return (o is Map) ? o["alerts"] : o.alerts;
}

_alert(o) {
  if (o == null) return null;
  return (o is Map) ? o["alert"] : o.alert;
}

_closeAlert(o) {
  if (o == null) return null;
  return (o is Map) ? o["closeAlert"] : o.closeAlert;
}

_addAlert(o) {
  if (o == null) return null;
  return (o is Map) ? o["addAlert"] : o.addAlert;
}

_rate(o) {
  if (o == null) return null;
  return (o is Map) ? o["rate"] : o.rate;
}

_isReadonly(o) {
  if (o == null) return null;
  return (o is Map) ? o["isReadonly"] : o.isReadonly;
}

_hoveringOver(o) {
  if (o == null) return null;
  return (o is Map) ? o["hoveringOver"] : o.hoveringOver;
}

_percent(o) {
  if (o == null) return null;
  return (o is Map) ? o["percent"] : o.percent;
}

_overStar(o) {
  if (o == null) return null;
  return (o is Map) ? o["overStar"] : o.overStar;
}

_ratingStates(o) {
  if (o == null) return null;
  return (o is Map) ? o["ratingStates"] : o.ratingStates;
}

_isCollapsed(o) {
  if (o == null) return null;
  return (o is Map) ? o["isCollapsed"] : o.isCollapsed;
}

_heading(o) {
  if (o == null) return null;
  return (o is Map) ? o["heading"] : o.heading;
}

_t(o) {
  if (o == null) return null;
  return (o is Map) ? o["t"] : o.t;
}

_closeHandler(o) {
  if (o == null) return null;
  return (o is Map) ? o["closeHandler"] : o.closeHandler;
}

_showable(o) {
  if (o == null) return null;
  return (o is Map) ? o["showable"] : o.showable;
}

_reset(o) {
  if (o == null) return null;
  return (o is Map) ? o["reset"] : o.reset;
}

_range(o) {
  if (o == null) return null;
  return (o is Map) ? o["range"] : o.range;
}

_r(o) {
  if (o == null) return null;
  return (o is Map) ? o["r"] : o.r;
}

_stateClass(o) {
  if (o == null) return null;
  return (o is Map) ? o["stateClass"] : o.stateClass;
}

_enter(o) {
  if (o == null) return null;
  return (o is Map) ? o["enter"] : o.enter;
}

_messages(o) {
  if (o == null) return null;
  return (o is Map) ? o["messages"] : o.messages;
}

_close(o) {
  if (o == null) return null;
  return (o is Map) ? o["close"] : o.close;
}

_isCloseOthers(o) {
  if (o == null) return null;
  return (o is Map) ? o["isCloseOthers"] : o.isCloseOthers;
}

_btnRadioAttr(o) {
  if (o == null) return null;
  return (o is Map) ? o["btnRadioAttr"] : o.btnRadioAttr;
}

_btnCheckboxTrue(o) {
  if (o == null) return null;
  return (o is Map) ? o["btnCheckboxTrue"] : o.btnCheckboxTrue;
}

_btnCheckboxFalse(o) {
  if (o == null) return null;
  return (o is Map) ? o["btnCheckboxFalse"] : o.btnCheckboxFalse;
}

_c(o) {
  if (o == null) return null;
  return (o is Map) ? o["c"] : o.c;
}

_pause(o) {
  if (o == null) return null;
  return (o is Map) ? o["pause"] : o.pause;
}

_play(o) {
  if (o == null) return null;
  return (o is Map) ? o["play"] : o.play;
}

_length(o) {
  if (o == null) return null;
  return (o is Map) ? o["length"] : o.length;
}

_isActive(o) {
  if (o == null) return null;
  return (o is Map) ? o["isActive"] : o.isActive;
}

_select(o) {
  if (o == null) return null;
  return (o is Map) ? o["select"] : o.select;
}

_prev(o) {
  if (o == null) return null;
  return (o is Map) ? o["prev"] : o.prev;
}

_next(o) {
  if (o == null) return null;
  return (o is Map) ? o["next"] : o.next;
}

_s(o) {
  if (o == null) return null;
  return (o is Map) ? o["s"] : o.s;
}

_leaving(o) {
  if (o == null) return null;
  return (o is Map) ? o["leaving"] : o.leaving;
}

_entering(o) {
  if (o == null) return null;
  return (o is Map) ? o["entering"] : o.entering;
}

_direction(o) {
  if (o == null) return null;
  return (o is Map) ? o["direction"] : o.direction;
}

_collapseAttr(o) {
  if (o == null) return null;
  return (o is Map) ? o["collapseAttr"] : o.collapseAttr;
}

_onHover(o) {
  if (o == null) return null;
  return (o is Map) ? o["onHover"] : o.onHover;
}

_onLeave(o) {
  if (o == null) return null;
  return (o is Map) ? o["onLeave"] : o.onLeave;
}

_stateOn(o) {
  if (o == null) return null;
  return (o is Map) ? o["stateOn"] : o.stateOn;
}

_stateOff(o) {
  if (o == null) return null;
  return (o is Map) ? o["stateOff"] : o.stateOff;
}

_bind(o) {
  if (o == null) return null;
  return (o is Map) ? o["bind"] : o.bind;
}

_valueExpression(o) {
  if (o == null) return null;
  return (o is Map) ? o["valueExpression"] : o.valueExpression;
}

_onAbort(o) {
  if (o == null) return null;
  return (o is Map) ? o["onAbort"] : o.onAbort;
}

_onBeforeCopy(o) {
  if (o == null) return null;
  return (o is Map) ? o["onBeforeCopy"] : o.onBeforeCopy;
}

_onBeforeCut(o) {
  if (o == null) return null;
  return (o is Map) ? o["onBeforeCut"] : o.onBeforeCut;
}

_onBeforePaste(o) {
  if (o == null) return null;
  return (o is Map) ? o["onBeforePaste"] : o.onBeforePaste;
}

_onBlur(o) {
  if (o == null) return null;
  return (o is Map) ? o["onBlur"] : o.onBlur;
}

_onChange(o) {
  if (o == null) return null;
  return (o is Map) ? o["onChange"] : o.onChange;
}

_onClick(o) {
  if (o == null) return null;
  return (o is Map) ? o["onClick"] : o.onClick;
}

_onContextMenu(o) {
  if (o == null) return null;
  return (o is Map) ? o["onContextMenu"] : o.onContextMenu;
}

_onCopy(o) {
  if (o == null) return null;
  return (o is Map) ? o["onCopy"] : o.onCopy;
}

_onCut(o) {
  if (o == null) return null;
  return (o is Map) ? o["onCut"] : o.onCut;
}

_onDoubleClick(o) {
  if (o == null) return null;
  return (o is Map) ? o["onDoubleClick"] : o.onDoubleClick;
}

_onDrag(o) {
  if (o == null) return null;
  return (o is Map) ? o["onDrag"] : o.onDrag;
}

_onDragEnd(o) {
  if (o == null) return null;
  return (o is Map) ? o["onDragEnd"] : o.onDragEnd;
}

_onDragEnter(o) {
  if (o == null) return null;
  return (o is Map) ? o["onDragEnter"] : o.onDragEnter;
}

_onDragLeave(o) {
  if (o == null) return null;
  return (o is Map) ? o["onDragLeave"] : o.onDragLeave;
}

_onDragOver(o) {
  if (o == null) return null;
  return (o is Map) ? o["onDragOver"] : o.onDragOver;
}

_onDragStart(o) {
  if (o == null) return null;
  return (o is Map) ? o["onDragStart"] : o.onDragStart;
}

_onDrop(o) {
  if (o == null) return null;
  return (o is Map) ? o["onDrop"] : o.onDrop;
}

_onError(o) {
  if (o == null) return null;
  return (o is Map) ? o["onError"] : o.onError;
}

_onFocus(o) {
  if (o == null) return null;
  return (o is Map) ? o["onFocus"] : o.onFocus;
}

_onFullscreenChange(o) {
  if (o == null) return null;
  return (o is Map) ? o["onFullscreenChange"] : o.onFullscreenChange;
}

_onFullscreenError(o) {
  if (o == null) return null;
  return (o is Map) ? o["onFullscreenError"] : o.onFullscreenError;
}

_onInput(o) {
  if (o == null) return null;
  return (o is Map) ? o["onInput"] : o.onInput;
}

_onInvalid(o) {
  if (o == null) return null;
  return (o is Map) ? o["onInvalid"] : o.onInvalid;
}

_onKeyDown(o) {
  if (o == null) return null;
  return (o is Map) ? o["onKeyDown"] : o.onKeyDown;
}

_onKeyPress(o) {
  if (o == null) return null;
  return (o is Map) ? o["onKeyPress"] : o.onKeyPress;
}

_onKeyUp(o) {
  if (o == null) return null;
  return (o is Map) ? o["onKeyUp"] : o.onKeyUp;
}

_onLoad(o) {
  if (o == null) return null;
  return (o is Map) ? o["onLoad"] : o.onLoad;
}

_onMouseDown(o) {
  if (o == null) return null;
  return (o is Map) ? o["onMouseDown"] : o.onMouseDown;
}

_onMouseEnter(o) {
  if (o == null) return null;
  return (o is Map) ? o["onMouseEnter"] : o.onMouseEnter;
}

_onMouseLeave(o) {
  if (o == null) return null;
  return (o is Map) ? o["onMouseLeave"] : o.onMouseLeave;
}

_onMouseMove(o) {
  if (o == null) return null;
  return (o is Map) ? o["onMouseMove"] : o.onMouseMove;
}

_onMouseOut(o) {
  if (o == null) return null;
  return (o is Map) ? o["onMouseOut"] : o.onMouseOut;
}

_onMouseOver(o) {
  if (o == null) return null;
  return (o is Map) ? o["onMouseOver"] : o.onMouseOver;
}

_onMouseUp(o) {
  if (o == null) return null;
  return (o is Map) ? o["onMouseUp"] : o.onMouseUp;
}

_onMouseWheel(o) {
  if (o == null) return null;
  return (o is Map) ? o["onMouseWheel"] : o.onMouseWheel;
}

_onPaste(o) {
  if (o == null) return null;
  return (o is Map) ? o["onPaste"] : o.onPaste;
}

_onReset(o) {
  if (o == null) return null;
  return (o is Map) ? o["onReset"] : o.onReset;
}

_onScroll(o) {
  if (o == null) return null;
  return (o is Map) ? o["onScroll"] : o.onScroll;
}

_onSearch(o) {
  if (o == null) return null;
  return (o is Map) ? o["onSearch"] : o.onSearch;
}

_onSelect(o) {
  if (o == null) return null;
  return (o is Map) ? o["onSelect"] : o.onSelect;
}

_onSelectStart(o) {
  if (o == null) return null;
  return (o is Map) ? o["onSelectStart"] : o.onSelectStart;
}

_onSubmit(o) {
  if (o == null) return null;
  return (o is Map) ? o["onSubmit"] : o.onSubmit;
}

_onTouchCancel(o) {
  if (o == null) return null;
  return (o is Map) ? o["onTouchCancel"] : o.onTouchCancel;
}

_onTouchEnd(o) {
  if (o == null) return null;
  return (o is Map) ? o["onTouchEnd"] : o.onTouchEnd;
}

_onTouchEnter(o) {
  if (o == null) return null;
  return (o is Map) ? o["onTouchEnter"] : o.onTouchEnter;
}

_onTouchLeave(o) {
  if (o == null) return null;
  return (o is Map) ? o["onTouchLeave"] : o.onTouchLeave;
}

_onTouchMove(o) {
  if (o == null) return null;
  return (o is Map) ? o["onTouchMove"] : o.onTouchMove;
}

_onTouchStart(o) {
  if (o == null) return null;
  return (o is Map) ? o["onTouchStart"] : o.onTouchStart;
}

_onTransitionEnd(o) {
  if (o == null) return null;
  return (o is Map) ? o["onTransitionEnd"] : o.onTransitionEnd;
}

_condition(o) {
  if (o == null) return null;
  return (o is Map) ? o["condition"] : o.condition;
}

_url(o) {
  if (o == null) return null;
  return (o is Map) ? o["url"] : o.url;
}

_count(o) {
  if (o == null) return null;
  return (o is Map) ? o["count"] : o.count;
}

_expression(o) {
  if (o == null) return null;
  return (o is Map) ? o["expression"] : o.expression;
}

_templateUrl(o) {
  if (o == null) return null;
  return (o is Map) ? o["templateUrl"] : o.templateUrl;
}

_hide(o) {
  if (o == null) return null;
  return (o is Map) ? o["hide"] : o.hide;
}

_show(o) {
  if (o == null) return null;
  return (o is Map) ? o["show"] : o.show;
}

_checked(o) {
  if (o == null) return null;
  return (o is Map) ? o["checked"] : o.checked;
}

_disabled(o) {
  if (o == null) return null;
  return (o is Map) ? o["disabled"] : o.disabled;
}

_multiple(o) {
  if (o == null) return null;
  return (o is Map) ? o["multiple"] : o.multiple;
}

_readonly(o) {
  if (o == null) return null;
  return (o is Map) ? o["readonly"] : o.readonly;
}

_required(o) {
  if (o == null) return null;
  return (o is Map) ? o["required"] : o.required;
}

_href(o) {
  if (o == null) return null;
  return (o is Map) ? o["href"] : o.href;
}

_src(o) {
  if (o == null) return null;
  return (o is Map) ? o["src"] : o.src;
}

_srcset(o) {
  if (o == null) return null;
  return (o is Map) ? o["srcset"] : o.srcset;
}

_styleExpression(o) {
  if (o == null) return null;
  return (o is Map) ? o["styleExpression"] : o.styleExpression;
}

_ngValue(o) {
  if (o == null) return null;
  return (o is Map) ? o["ngValue"] : o.ngValue;
}

_routeName(o) {
  if (o == null) return null;
  return (o is Map) ? o["routeName"] : o.routeName;
}

_ensure$selected(o) {
  if (o == null) return null;
  if (o is Map) {
    var key = "selected";
    var result = o[key];
    return (result == null) ? result = o[key] = {} : result;
  } else {
    var result = o.selected;
    return (result == null) ? result = o.selected = {} : result;
  }
}

_ensure$ctrl(o) {
  if (o == null) return null;
  if (o is Map) {
    var key = "ctrl";
    var result = o[key];
    return (result == null) ? result = o[key] = {} : result;
  } else {
    var result = o.ctrl;
    return (result == null) ? result = o.ctrl = {} : result;
  }
}

_ensure$group(o) {
  if (o == null) return null;
  if (o is Map) {
    var key = "group";
    var result = o[key];
    return (result == null) ? result = o[key] = {} : result;
  } else {
    var result = o.group;
    return (result == null) ? result = o.group = {} : result;
  }
}

_ensure$checkModel(o) {
  if (o == null) return null;
  if (o is Map) {
    var key = "checkModel";
    var result = o[key];
    return (result == null) ? result = o[key] = {} : result;
  } else {
    var result = o.checkModel;
    return (result == null) ? result = o.checkModel = {} : result;
  }
}

_ensure$match(o) {
  if (o == null) return null;
  if (o is Map) {
    var key = "match";
    var result = o[key];
    return (result == null) ? result = o[key] = {} : result;
  } else {
    var result = o.match;
    return (result == null) ? result = o.match = {} : result;
  }
}

_ensure$model(o) {
  if (o == null) return null;
  if (o is Map) {
    var key = "model";
    var result = o[key];
    return (result == null) ? result = o[key] = {} : result;
  } else {
    var result = o.model;
    return (result == null) ? result = o.model = {} : result;
  }
}

_ensure$slide(o) {
  if (o == null) return null;
  if (o is Map) {
    var key = "slide";
    var result = o[key];
    return (result == null) ? result = o[key] = {} : result;
  } else {
    var result = o.slide;
    return (result == null) ? result = o.slide = {} : result;
  }
}

_ensure$bar(o) {
  if (o == null) return null;
  if (o is Map) {
    var key = "bar";
    var result = o[key];
    return (result == null) ? result = o[key] = {} : result;
  } else {
    var result = o.bar;
    return (result == null) ? result = o.bar = {} : result;
  }
}

_ensure$t(o) {
  if (o == null) return null;
  if (o is Map) {
    var key = "t";
    var result = o[key];
    return (result == null) ? result = o[key] = {} : result;
  } else {
    var result = o.t;
    return (result == null) ? result = o.t = {} : result;
  }
}

_set$dynamicPopover(o, v) {
  if (o is Map) o["dynamicPopover"] = v; else o.dynamicPopover = v;
  return v;
}

_set$dynamicPopoverTitle(o, v) {
  if (o is Map) o["dynamicPopoverTitle"] = v; else o.dynamicPopoverTitle = v;
  return v;
}

_set$mytime(o, v) {
  if (o is Map) o["mytime"] = v; else o.mytime = v;
  return v;
}

_set$hstep(o, v) {
  if (o is Map) o["hstep"] = v; else o.hstep = v;
  return v;
}

_set$mstep(o, v) {
  if (o is Map) o["mstep"] = v; else o.mstep = v;
  return v;
}

_set$item(o, v) {
  if (o is Map) o["item"] = v; else o.item = v;
  return v;
}

_set$selected(o, v) {
  if (o is Map) o["selected"] = v; else o.selected = v;
  return v;
}

_set$dt(o, v) {
  if (o is Map) o["dt"] = v; else o.dt = v;
  return v;
}

_set$format(o, v) {
  if (o is Map) o["format"] = v; else o.format = v;
  return v;
}

_set$oneAtATime(o, v) {
  if (o is Map) o["oneAtATime"] = v; else o.oneAtATime = v;
  return v;
}

_set$groups(o, v) {
  if (o is Map) o["groups"] = v; else o.groups = v;
  return v;
}

_set$content(o, v) {
  if (o is Map) o["content"] = v; else o.content = v;
  return v;
}

_set$items(o, v) {
  if (o is Map) o["items"] = v; else o.items = v;
  return v;
}

_set$isOpen(o, v) {
  if (o is Map) o["isOpen"] = v; else o.isOpen = v;
  return v;
}

_set$tabs(o, v) {
  if (o is Map) o["tabs"] = v; else o.tabs = v;
  return v;
}

_set$dynamicTooltipText(o, v) {
  if (o is Map) o["dynamicTooltipText"] = v; else o.dynamicTooltipText = v;
  return v;
}

_set$dynamicTooltip(o, v) {
  if (o is Map) o["dynamicTooltip"] = v; else o.dynamicTooltip = v;
  return v;
}

_set$htmlTooltip(o, v) {
  if (o is Map) o["htmlTooltip"] = v; else o.htmlTooltip = v;
  return v;
}

_set$currentPage(o, v) {
  if (o is Map) o["currentPage"] = v; else o.currentPage = v;
  return v;
}

_set$bigCurrentPage(o, v) {
  if (o is Map) o["bigCurrentPage"] = v; else o.bigCurrentPage = v;
  return v;
}

_set$numPages(o, v) {
  if (o is Map) o["numPages"] = v; else o.numPages = v;
  return v;
}

_set$singleModel(o, v) {
  if (o is Map) o["singleModel"] = v; else o.singleModel = v;
  return v;
}

_set$checkModel(o, v) {
  if (o is Map) o["checkModel"] = v; else o.checkModel = v;
  return v;
}

_set$left(o, v) {
  if (o is Map) o["left"] = v; else o.left = v;
  return v;
}

_set$middle(o, v) {
  if (o is Map) o["middle"] = v; else o.middle = v;
  return v;
}

_set$right(o, v) {
  if (o is Map) o["right"] = v; else o.right = v;
  return v;
}

_set$radioModel(o, v) {
  if (o is Map) o["radioModel"] = v; else o.radioModel = v;
  return v;
}

_set$flag(o, v) {
  if (o is Map) o["flag"] = v; else o.flag = v;
  return v;
}

_set$asyncSelected(o, v) {
  if (o is Map) o["asyncSelected"] = v; else o.asyncSelected = v;
  return v;
}

_set$loadingLocations(o, v) {
  if (o is Map) o["loadingLocations"] = v; else o.loadingLocations = v;
  return v;
}

_set$customSelected(o, v) {
  if (o is Map) o["customSelected"] = v; else o.customSelected = v;
  return v;
}

_set$slides(o, v) {
  if (o is Map) o["slides"] = v; else o.slides = v;
  return v;
}

_set$active(o, v) {
  if (o is Map) o["active"] = v; else o.active = v;
  return v;
}

_set$image(o, v) {
  if (o is Map) o["image"] = v; else o.image = v;
  return v;
}

_set$$index(o, v) {
  if (o is Map) o["\$index"] = v; else o.$index = v;
  return v;
}

_set$text(o, v) {
  if (o is Map) o["text"] = v; else o.text = v;
  return v;
}

_set$myInterval(o, v) {
  if (o is Map) o["myInterval"] = v; else o.myInterval = v;
  return v;
}

_set$choice(o, v) {
  if (o is Map) o["choice"] = v; else o.choice = v;
  return v;
}

_set$dynamic(o, v) {
  if (o is Map) o["dynamic"] = v; else o.dynamic = v;
  return v;
}

_set$max(o, v) {
  if (o is Map) o["max"] = v; else o.max = v;
  return v;
}

_set$type(o, v) {
  if (o is Map) o["type"] = v; else o.type = v;
  return v;
}

_set$showWarning(o, v) {
  if (o is Map) o["showWarning"] = v; else o.showWarning = v;
  return v;
}

_set$stacked(o, v) {
  if (o is Map) o["stacked"] = v; else o.stacked = v;
  return v;
}

_set$value(o, v) {
  if (o is Map) o["value"] = v; else o.value = v;
  return v;
}

_set$alerts(o, v) {
  if (o is Map) o["alerts"] = v; else o.alerts = v;
  return v;
}

_set$rate(o, v) {
  if (o is Map) o["rate"] = v; else o.rate = v;
  return v;
}

_set$isReadonly(o, v) {
  if (o is Map) o["isReadonly"] = v; else o.isReadonly = v;
  return v;
}

_set$overStar(o, v) {
  if (o is Map) o["overStar"] = v; else o.overStar = v;
  return v;
}

_set$percent(o, v) {
  if (o is Map) o["percent"] = v; else o.percent = v;
  return v;
}

_set$ratingStates(o, v) {
  if (o is Map) o["ratingStates"] = v; else o.ratingStates = v;
  return v;
}

_set$isCollapsed(o, v) {
  if (o is Map) o["isCollapsed"] = v; else o.isCollapsed = v;
  return v;
}

_set$heading(o, v) {
  if (o is Map) o["heading"] = v; else o.heading = v;
  return v;
}

_set$showable(o, v) {
  if (o is Map) o["showable"] = v; else o.showable = v;
  return v;
}

_set$range(o, v) {
  if (o is Map) o["range"] = v; else o.range = v;
  return v;
}

_set$messages(o, v) {
  if (o is Map) o["messages"] = v; else o.messages = v;
  return v;
}

_set$close(o, v) {
  if (o is Map) o["close"] = v; else o.close = v;
  return v;
}

_set$isCloseOthers(o, v) {
  if (o is Map) o["isCloseOthers"] = v; else o.isCloseOthers = v;
  return v;
}

_set$btnRadioAttr(o, v) {
  if (o is Map) o["btnRadioAttr"] = v; else o.btnRadioAttr = v;
  return v;
}

_set$btnCheckboxTrue(o, v) {
  if (o is Map) o["btnCheckboxTrue"] = v; else o.btnCheckboxTrue = v;
  return v;
}

_set$btnCheckboxFalse(o, v) {
  if (o is Map) o["btnCheckboxFalse"] = v; else o.btnCheckboxFalse = v;
  return v;
}

_set$collapseAttr(o, v) {
  if (o is Map) o["collapseAttr"] = v; else o.collapseAttr = v;
  return v;
}

_set$onHover(o, v) {
  if (o is Map) o["onHover"] = v; else o.onHover = v;
  return v;
}

_set$onLeave(o, v) {
  if (o is Map) o["onLeave"] = v; else o.onLeave = v;
  return v;
}

_set$stateOn(o, v) {
  if (o is Map) o["stateOn"] = v; else o.stateOn = v;
  return v;
}

_set$stateOff(o, v) {
  if (o is Map) o["stateOff"] = v; else o.stateOff = v;
  return v;
}

_set$bind(o, v) {
  if (o is Map) o["bind"] = v; else o.bind = v;
  return v;
}

_set$valueExpression(o, v) {
  if (o is Map) o["valueExpression"] = v; else o.valueExpression = v;
  return v;
}

_set$onAbort(o, v) {
  if (o is Map) o["onAbort"] = v; else o.onAbort = v;
  return v;
}

_set$onBeforeCopy(o, v) {
  if (o is Map) o["onBeforeCopy"] = v; else o.onBeforeCopy = v;
  return v;
}

_set$onBeforeCut(o, v) {
  if (o is Map) o["onBeforeCut"] = v; else o.onBeforeCut = v;
  return v;
}

_set$onBeforePaste(o, v) {
  if (o is Map) o["onBeforePaste"] = v; else o.onBeforePaste = v;
  return v;
}

_set$onBlur(o, v) {
  if (o is Map) o["onBlur"] = v; else o.onBlur = v;
  return v;
}

_set$onChange(o, v) {
  if (o is Map) o["onChange"] = v; else o.onChange = v;
  return v;
}

_set$onClick(o, v) {
  if (o is Map) o["onClick"] = v; else o.onClick = v;
  return v;
}

_set$onContextMenu(o, v) {
  if (o is Map) o["onContextMenu"] = v; else o.onContextMenu = v;
  return v;
}

_set$onCopy(o, v) {
  if (o is Map) o["onCopy"] = v; else o.onCopy = v;
  return v;
}

_set$onCut(o, v) {
  if (o is Map) o["onCut"] = v; else o.onCut = v;
  return v;
}

_set$onDoubleClick(o, v) {
  if (o is Map) o["onDoubleClick"] = v; else o.onDoubleClick = v;
  return v;
}

_set$onDrag(o, v) {
  if (o is Map) o["onDrag"] = v; else o.onDrag = v;
  return v;
}

_set$onDragEnd(o, v) {
  if (o is Map) o["onDragEnd"] = v; else o.onDragEnd = v;
  return v;
}

_set$onDragEnter(o, v) {
  if (o is Map) o["onDragEnter"] = v; else o.onDragEnter = v;
  return v;
}

_set$onDragLeave(o, v) {
  if (o is Map) o["onDragLeave"] = v; else o.onDragLeave = v;
  return v;
}

_set$onDragOver(o, v) {
  if (o is Map) o["onDragOver"] = v; else o.onDragOver = v;
  return v;
}

_set$onDragStart(o, v) {
  if (o is Map) o["onDragStart"] = v; else o.onDragStart = v;
  return v;
}

_set$onDrop(o, v) {
  if (o is Map) o["onDrop"] = v; else o.onDrop = v;
  return v;
}

_set$onError(o, v) {
  if (o is Map) o["onError"] = v; else o.onError = v;
  return v;
}

_set$onFocus(o, v) {
  if (o is Map) o["onFocus"] = v; else o.onFocus = v;
  return v;
}

_set$onFullscreenChange(o, v) {
  if (o is Map) o["onFullscreenChange"] = v; else o.onFullscreenChange = v;
  return v;
}

_set$onFullscreenError(o, v) {
  if (o is Map) o["onFullscreenError"] = v; else o.onFullscreenError = v;
  return v;
}

_set$onInput(o, v) {
  if (o is Map) o["onInput"] = v; else o.onInput = v;
  return v;
}

_set$onInvalid(o, v) {
  if (o is Map) o["onInvalid"] = v; else o.onInvalid = v;
  return v;
}

_set$onKeyDown(o, v) {
  if (o is Map) o["onKeyDown"] = v; else o.onKeyDown = v;
  return v;
}

_set$onKeyPress(o, v) {
  if (o is Map) o["onKeyPress"] = v; else o.onKeyPress = v;
  return v;
}

_set$onKeyUp(o, v) {
  if (o is Map) o["onKeyUp"] = v; else o.onKeyUp = v;
  return v;
}

_set$onLoad(o, v) {
  if (o is Map) o["onLoad"] = v; else o.onLoad = v;
  return v;
}

_set$onMouseDown(o, v) {
  if (o is Map) o["onMouseDown"] = v; else o.onMouseDown = v;
  return v;
}

_set$onMouseEnter(o, v) {
  if (o is Map) o["onMouseEnter"] = v; else o.onMouseEnter = v;
  return v;
}

_set$onMouseLeave(o, v) {
  if (o is Map) o["onMouseLeave"] = v; else o.onMouseLeave = v;
  return v;
}

_set$onMouseMove(o, v) {
  if (o is Map) o["onMouseMove"] = v; else o.onMouseMove = v;
  return v;
}

_set$onMouseOut(o, v) {
  if (o is Map) o["onMouseOut"] = v; else o.onMouseOut = v;
  return v;
}

_set$onMouseOver(o, v) {
  if (o is Map) o["onMouseOver"] = v; else o.onMouseOver = v;
  return v;
}

_set$onMouseUp(o, v) {
  if (o is Map) o["onMouseUp"] = v; else o.onMouseUp = v;
  return v;
}

_set$onMouseWheel(o, v) {
  if (o is Map) o["onMouseWheel"] = v; else o.onMouseWheel = v;
  return v;
}

_set$onPaste(o, v) {
  if (o is Map) o["onPaste"] = v; else o.onPaste = v;
  return v;
}

_set$onReset(o, v) {
  if (o is Map) o["onReset"] = v; else o.onReset = v;
  return v;
}

_set$onScroll(o, v) {
  if (o is Map) o["onScroll"] = v; else o.onScroll = v;
  return v;
}

_set$onSearch(o, v) {
  if (o is Map) o["onSearch"] = v; else o.onSearch = v;
  return v;
}

_set$onSelect(o, v) {
  if (o is Map) o["onSelect"] = v; else o.onSelect = v;
  return v;
}

_set$onSelectStart(o, v) {
  if (o is Map) o["onSelectStart"] = v; else o.onSelectStart = v;
  return v;
}

_set$onSubmit(o, v) {
  if (o is Map) o["onSubmit"] = v; else o.onSubmit = v;
  return v;
}

_set$onTouchCancel(o, v) {
  if (o is Map) o["onTouchCancel"] = v; else o.onTouchCancel = v;
  return v;
}

_set$onTouchEnd(o, v) {
  if (o is Map) o["onTouchEnd"] = v; else o.onTouchEnd = v;
  return v;
}

_set$onTouchEnter(o, v) {
  if (o is Map) o["onTouchEnter"] = v; else o.onTouchEnter = v;
  return v;
}

_set$onTouchLeave(o, v) {
  if (o is Map) o["onTouchLeave"] = v; else o.onTouchLeave = v;
  return v;
}

_set$onTouchMove(o, v) {
  if (o is Map) o["onTouchMove"] = v; else o.onTouchMove = v;
  return v;
}

_set$onTouchStart(o, v) {
  if (o is Map) o["onTouchStart"] = v; else o.onTouchStart = v;
  return v;
}

_set$onTransitionEnd(o, v) {
  if (o is Map) o["onTransitionEnd"] = v; else o.onTransitionEnd = v;
  return v;
}

_set$condition(o, v) {
  if (o is Map) o["condition"] = v; else o.condition = v;
  return v;
}

_set$url(o, v) {
  if (o is Map) o["url"] = v; else o.url = v;
  return v;
}

_set$model(o, v) {
  if (o is Map) o["model"] = v; else o.model = v;
  return v;
}

_set$count(o, v) {
  if (o is Map) o["count"] = v; else o.count = v;
  return v;
}

_set$expression(o, v) {
  if (o is Map) o["expression"] = v; else o.expression = v;
  return v;
}

_set$templateUrl(o, v) {
  if (o is Map) o["templateUrl"] = v; else o.templateUrl = v;
  return v;
}

_set$hide(o, v) {
  if (o is Map) o["hide"] = v; else o.hide = v;
  return v;
}

_set$show(o, v) {
  if (o is Map) o["show"] = v; else o.show = v;
  return v;
}

_set$checked(o, v) {
  if (o is Map) o["checked"] = v; else o.checked = v;
  return v;
}

_set$disabled(o, v) {
  if (o is Map) o["disabled"] = v; else o.disabled = v;
  return v;
}

_set$multiple(o, v) {
  if (o is Map) o["multiple"] = v; else o.multiple = v;
  return v;
}

_set$open(o, v) {
  if (o is Map) o["open"] = v; else o.open = v;
  return v;
}

_set$readonly(o, v) {
  if (o is Map) o["readonly"] = v; else o.readonly = v;
  return v;
}

_set$required(o, v) {
  if (o is Map) o["required"] = v; else o.required = v;
  return v;
}

_set$href(o, v) {
  if (o is Map) o["href"] = v; else o.href = v;
  return v;
}

_set$src(o, v) {
  if (o is Map) o["src"] = v; else o.src = v;
  return v;
}

_set$srcset(o, v) {
  if (o is Map) o["srcset"] = v; else o.srcset = v;
  return v;
}

_set$styleExpression(o, v) {
  if (o is Map) o["styleExpression"] = v; else o.styleExpression = v;
  return v;
}

_set$ngValue(o, v) {
  if (o is Map) o["ngValue"] = v; else o.ngValue = v;
  return v;
}

_set$routeName(o, v) {
  if (o is Map) o["routeName"] = v; else o.routeName = v;
  return v;
}

