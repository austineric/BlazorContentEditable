
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
`<BlazorContentEditableComponent @bind-Value="Text" />`

Notes:
* **@bind-Value** - the property to which the component should be bound
* **Enabled** - (optional, defaults to true) - allows the component to be disabled directly `Enabled="false"` or conditionally `Enabled="@UserIsAuthorized ? true : false"`
* **CSSClass** - (optional) add css classes
* **CSSStyle** - (optional) add css styles
* **Rows** - (optional, defaults to 1) allows setting the number of rows (height) the component should display if no text is present
* **Columns** - (optional) sets the number of columns (width) for the component (1 column = 1 average-width character)
* **Width** - (optional, defaults to 100% if neither Columns nor Width are set) sets the width of the component with CSS

# Releases
### 2.0.0
* Changed to auto-resizing TextArea
### 1.4.0
* Can conditionally disable component
### 1.3.0
* Use `@using BlazorContentEditable` in _Imports.razor instead of `@using BlazorContentEditable.Source`
