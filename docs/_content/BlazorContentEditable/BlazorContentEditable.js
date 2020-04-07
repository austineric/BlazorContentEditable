
function BlazorContentEditable(DivID, Instance, TextToDisplay) {
    document.getElementById(DivID).innerHTML = TextToDisplay;
    document.getElementById(DivID).addEventListener("input", function () { Instance.invokeMethodAsync("GetUpdatedTextFromJavascript", document.getElementById(DivID).innerText) });
}