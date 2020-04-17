
function BlazorContentEditable(DivID, Instance, TextToDisplay) {

    /*set prefilled text*/
    document.getElementById(DivID).innerHTML = TextToDisplay;

    /*set event listener*/
    document.getElementById(DivID).addEventListener("input", function () { Instance.invokeMethodAsync("GetUpdatedTextFromJavascript", document.getElementById(DivID).innerText) });

}