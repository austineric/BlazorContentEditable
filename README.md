
### [Demo site here](https://austineric.github.io/BlazorContentEditable/)

# BlazorContentEditable
A contenteditable component for Blazor

- Automatically sizes to prefilled text
- Automatically sizes to to text as it's typed

# Installation
Include NuGet package from https://www.nuget.org/packages/BlazorContentEditable/

# Setup
### Blazor WebAssembly
* Add `@using BlazorContentEditable` to _Imports.razor
* Add `<script src="_content/BlazorContentEditable/BlazorContentEditable.js"></script>` to wwwroot/index.html

### Blazor Server
* Add `@using BlazorContentEditable` to _Imports.razor
* Add `<script src="_content/BlazorContentEditable/BlazorContentEditable.js"></script>` to Pages/_Host.cshtml

# Usage
`<BlazorContentEditableComponent InitialText="@Text" UpdatedText="@(UpdatedText => Text = UpdatedText)" />`

Notes:
* **InitialText** - (optional) include if placeholder text or prefilled text (ie from a database) should be displayed
* **UpdatedText** - an event callback from the component containing the text as it gets entered by the user, in the example above `UpdatedText="@(UpdatedText => Text = UpdatedText)"` "Text" should be replaced by whichever property you want to receive the updated text
* **CSSClass** - (optional) add css classes
* **CSSStyle** - (optional) add css styles
* **Disabled** - (optional) boolean which allows the component to be disabled ie Disabled="true" or conditionally disabled ie Disabled="@(UserIsAuthorized ? false : true)"
* **DisabledBackgroundColor** - (optional) allows customizing of the disabled div color (defaults to lightgray if not set)

# Releases
### 1.4.0
* Can conditionally disable component
### 1.3.0
* Use `@using BlazorContentEditable` in _Imports.razor instead of `@using BlazorContentEditable.Source`
