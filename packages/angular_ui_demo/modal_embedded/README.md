`Modal` is a service to quickly create AngularDart-powered modal windows.
Creating custom modals is straightforward: create a component with partial view and reference them when using the service.

The `Modal` service has only one method: `open(ModalOptions options, Scope scope)` where available options are like follows:

* `templateUrl` - a path to a template representing modal's content
* `template` - inline template representing the modal's content
* `size` - a size of modal. Could be `modal-lg` and `modal-sm`. Defaults to `modal-sm`
* `backdrop` - controls presence of a backdrop. Allowed values: true (default), false (no backdrop), `'static'` - backdrop is present but modal window is not closed when clicking outside of the modal window.
* `keyboard` - indicates whether the dialog should be closable by hitting the ESC key, defaults to true
* `windowClass` - additional CSS class(es) to be added to a modal window template

The `open` method returns a `ModalInstance`, an object with the following properties:

* `close(result)` - a method that can be used to close a modal, passing a result
* `dismiss(reason)` - a method that can be used to dismiss a modal, passing a reason
* `result` - a promise that is resolved when a modal is closed and rejected when a modal is dismissed
* `opened` - a promise that is resolved when a modal gets opened after downloading content's template and resolving all variables

In addition the scope associated with modal's content is augmented with 2 methods:
* `close(result)`
* `dismiss(reason)`
Those methods make it easy to close a modal window without a need to create a dedicated controller
