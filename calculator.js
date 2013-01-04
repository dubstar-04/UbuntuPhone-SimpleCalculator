
var currentValue = 0
var operation = ""
var pointPressed = false

function numberAction(buttonText){

    display.text = display.text + buttonText

}

function action (buttonText){

    if (buttonText == "." && pointPressed == false){
        display.text = display.text + buttonText
        pointPressed = true
    }

    if (operation == "" && (buttonText == "+" || buttonText == "-" || buttonText == "x" || buttonText == "/")){

        currentValue = display.text
        operation = buttonText
        display.text = ""
    }

    if(buttonText == "=" && operation == "+"){

        var currDisplay = display.text
        currentValue = (parseFloat(currentValue) + parseFloat(currDisplay)).toString()
        display.text = currentValue
        operation = ""
    }
    if(buttonText == "=" && operation == "-"){

        var currDisplay = display.text
        currentValue = (parseFloat(currentValue) - parseFloat(currDisplay)).toString()
        display.text = currentValue
        operation = ""
    }
    if(buttonText == "=" && operation == "/"){

        var currDisplay = display.text
        currentValue = (parseFloat(currentValue) / parseFloat(currDisplay)).toString()
        display.text = currentValue
        operation = ""
    }
    if(buttonText == "=" && operation == "x"){

        var currDisplay = display.text
        currentValue = (parseFloat(currentValue) * parseFloat(currDisplay)).toString()
        display.text = currentValue
        operation = ""

    }
}

function clear(){
    display.text = ""
    operation = ""
    currentValue = 0
    pointPressed = false
}
