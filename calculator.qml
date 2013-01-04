import QtQuick 2.0
import Ubuntu.Components 0.1
import "calculator.js" as Calc

Rectangle {
    id: root
    width: units.gu(60)
    height: units.gu(80)
    color: "lightgray"

    property real margins: units.gu(2)
    property real buttonWidth: units.gu(9)
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

        anchors {
            fill: parent
            margins: root.margins
            topMargin: title.height
                }
            spacing: units.gu(1)

        Row {
            spacing: units.gu(1)
            TextField{
                id: display
                width: pageLayout.width
                height: buttonOne.height * 1.5
                font.pixelSize: parent.height *0.7;



                    }
            }//row

        Row {
            spacing: units.gu(1)
            width: pageLayout.width

            Grid {
                spacing: units.gu(1)
                width: pageLayout.width
                columns: 4
                rows: 4

                Button {
                        id: buttonOne
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        text: i18n.tr("1")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonTwo
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        text: i18n.tr("2")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonThree
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        text: i18n.tr("3")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonPlus
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        text: i18n.tr("+")
                        onClicked: Calc.action(text)
                        }//button

                Button {
                        id: buttonFour
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        text: i18n.tr("4")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonFive
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        text: i18n.tr("5")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonSix
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        text: i18n.tr("6")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonMinus
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        text: i18n.tr("-")
                        onClicked: Calc.action(text)
                        }//button

                Button {
                        id: buttonSeven
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        text: i18n.tr("7")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonEight
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        text: i18n.tr("8")
                        onClicked: Calc.numberAction(text)
                        }//button
                Button {
                        id: buttonNine
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        text: i18n.tr("9")
                        onClicked: Calc.numberAction(text)
                        }//button
                 Button {
                        id: buttonPoint
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        text: i18n.tr(".")
                        onClicked: Calc.action(text)
                        }//button
                Rectangle {
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        height: buttonOne.height
                        color: "lightgray"
                           }
                Button {
                        id: buttonZero
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        text: i18n.tr("0")
                        onClicked: Calc.numberAction(text)
                        }//button

                Rectangle {
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        height: buttonOne.height
                        color: "lightgray"
                           }
                Button {
                        id: buttonEquals
                        width: ( pageLayout.width - ( 2 * standardspacing )) / 4
                        text: i18n.tr("=")
                        color: "green"
                        onClicked: Calc.action(text)
                        }//button
                    }//grid
            }//row

Row {
    Button {
    id: buttonClear
    text: i18n.tr("Clear")
    onClicked: Calc.clear()
    width: pageLayout.width
            }//clear button
    }//row


        }//column

}//parent
