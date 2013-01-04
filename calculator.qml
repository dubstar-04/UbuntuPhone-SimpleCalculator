import QtQuick 2.0
import Ubuntu.Components 0.1
import "calculator.js" as Calc

Rectangle {
    id: root
    width: units.gu(60)
    height: units.gu(40)
    color: "lightgray"

    property real margins: units.gu(2)
    property real buttonWidth: (pageLayout.width - standardspacing * (buttonGrid.columns - 1)) / buttonGrid.columns
    property real standardspacing: units.gu(1)


Label {
       id: title
       ItemStyle.class: "title"
       text: i18n.tr("Simple Calculator")
       height: contentHeight + root.margins
       anchors {
           left: parent.left
           right: parent.right
           top: parent.top
               }
       }//label

Column {
        id: pageLayout
        width: pageLayout.width
        spacing: standardspacing

        anchors {
            fill: parent
            margins: root.margins
            topMargin: title.height
                }


        Row {
            spacing: standardspacing
            TextField {
                id: display
                width: pageLayout.width
                height: buttonOne.height * 1.5
                font.pixelSize: parent.height *0.7;
                       }
            }//row

        Row {

            Grid {
                id: buttonGrid
                spacing: standardspacing
                width: pageLayout.width
                columns: 4
                rows: 4

                Button {
                        id: buttonOne
                        width: buttonWidth
                        text: i18n.tr("1")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonTwo
                        width: buttonWidth
                        text: i18n.tr("2")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonThree
                        width: buttonWidth
                        text: i18n.tr("3")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonPlus
                        width: buttonWidth
                        text: i18n.tr("+")
                        onClicked: Calc.action(text)
                        }//button

                Button {
                        id: buttonFour
                        width: buttonWidth
                        text: i18n.tr("4")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonFive
                        width: buttonWidth
                        text: i18n.tr("5")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonSix
                        width: buttonWidth
                        text: i18n.tr("6")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonMinus
                        width: buttonWidth
                        text: i18n.tr("-")
                        onClicked: Calc.action(text)
                        }//button

                Button {
                        id: buttonSeven
                        width: buttonWidth
                        text: i18n.tr("7")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonEight
                        width: buttonWidth
                        text: i18n.tr("8")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonNine
                        width: buttonWidth
                        text: i18n.tr("9")
                        onClicked: Calc.numberAction(text)
                        }//button
                 Button {
                        id: buttonMultiply
                        width: buttonWidth
                        text: i18n.tr("x")
                        onClicked: Calc.action(text)
                        }//button

                Button {
                       id: buttonPoint
                       width: buttonWidth
                       text: i18n.tr(".")
                       onClicked: Calc.action(text)
                       }//button
                Button {
                        id: buttonZero
                        width: buttonWidth
                        text: i18n.tr("0")
                        onClicked: Calc.numberAction(text)
                        }//button
                Rectangle {
                        width: buttonWidth
                        height: buttonOne.height
                        color: "lightgray"
                           }
                Button {
                       id: buttonDivide
                       width: buttonWidth
                       text: i18n.tr("/")
                       onClicked: Calc.action(text)
                       }//button

                    }//grid
            }//row

Row {
    spacing: standardspacing
    Button {
            id: buttonClear
            text: i18n.tr("Clear")
            onClicked: Calc.clear()
            width: (pageLayout.width - standardspacing) / 2
           }//clear button
    Button {
            id: buttonEquals
            width: (pageLayout.width - standardspacing) / 2
            text: i18n.tr("=")
            color: "green"
            onClicked: Calc.action(text)
           }//button


}//row

}//column

}//parent
