let fieldCounter = 0;  // Correct the case here to match the usage below

function addText() {
    const input = document.createElement("input");
    input.type = "text";
    input.name = "email" + fieldCounter;  // Using camelCase consistently
    input.placeholder = "Enter another email address";
	input.className ="form-control"
    input.style.margin = "5px";

    fieldCounter++;  // Increment the counter

    const container = document.getElementById("textFieldContainer");
    container.appendChild(input);
}


document.getElementById('textValueGet').addEventListener('click', checkTextValue);

function checkTextValue(){
    let textGetValue = document.getElementsByClassName('email_address')[0].value;
	
    console.log(textGetValue.split(','));
}
