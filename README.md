
[Demo site here](https://blazorcontenteditable.z19.web.core.windows.net/)

# BlazorContentEditable
A contenteditable component for Blazor

- Automatically sizes to prefilled text
- Automatically sizes to to text as it's typed
- Properly handles whitespace characters

# Installation
nuget

# Setup
### Blazor WebAssembly
* Add `@using BlazorContentEditable.Source` to _Imports.razor
* Add `<script src="_content/BlazorContentEditable/BlazorContentEditable.js"></script>` to wwwroot/index.html

### Blazor Server
* Add `@using BlazorContentEditable.Source` to _Imports.razor
* Add `<script src="_content/BlazorContentEditable/BlazorContentEditable.js"></script>` to Pages/_Host.cshtml

# Usage
`<BlazorContentEditableComponent InitialText="@Text" UpdatedText="@(UpdatedText => Text = UpdatedText)" />`

Notes:
* CSSClass - (optional) add css classes as desired
* CSSStyle - (optional) add css styles as desired
* InitialText only needs to be included if placeholder text or prefilled text (ie from a database) should be displayed
* UpdatedText is an event callback from the component containing the text as it gets entered by the user, in the example above `UpdatedText="@(UpdatedText => Text = UpdatedText)"` "Text" should be replaced by whichever property you want to receive the updated text
