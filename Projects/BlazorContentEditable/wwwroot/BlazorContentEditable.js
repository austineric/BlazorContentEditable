
function BlazorContentEditable(DivID, Instance, TextToDisplay) {

    //set prefilled text
    document.getElementById(DivID).innerHTML = TextToDisplay;

    //set initial height
    SetHeight(DivID);
    
    //set event listener
    document.getElementById(DivID).addEventListener("input", function () {
        Instance.invokeMethodAsync("GetUpdatedTextFromJavascript", document.getElementById(DivID).value);
        SetHeight(DivID);
    });

    function SetHeight(DivID) {

        //reset to original height
        document.getElementById(DivID).style.height = 'auto';

        //from https://gomakethings.com/automatically-expand-a-textarea-as-the-user-types-using-vanilla-javascript/
        // Get the computed styles for the element
        var computed = window.getComputedStyle(document.getElementById(DivID));

        // Calculate the height
        var height = parseInt(computed.getPropertyValue('border-top-width'), 10)
            + document.getElementById(DivID).scrollHeight
            + parseInt(computed.getPropertyValue('border-bottom-width'), 10);

        //set the height
        document.getElementById(DivID).style.height = (height + 'px');
    }

}