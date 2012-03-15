// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    width: 360
    height: 360

    Text {
        id:txt
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }



    Rectangle {
        id: button1
        x: 127
        y: 71
        width: 106
        height: 46

        anchors.verticalCenterOffset: -90
        anchors.horizontalCenterOffset: 0


        anchors.centerIn: parent
        Text {
            id:buttonLabel1
            text: qsTr("button")
            anchors.centerIn: parent
        }


        property color buttonColor: "lightblue"
        property color onHoverColor: "gold"
        property color borderColor: "white"


        MouseArea{
            anchors.fill: parent
            id:buttonMouseArea1
            onClicked:  {
                console.log(buttonLabel1.text + " clicked" )
                console.log(exampleclass.hello())
                txt.text = exampleclass.hello()
            }
            hoverEnabled: true
            onEntered: parent.border.color = parent.onHoverColor
            onExited:  parent.border.color = parent.borderColor
        }

        //determines the color of the button by using the conditional operator
        color: buttonMouseArea1.pressed ? Qt.darker(buttonColor, 1.5) : buttonColor
    }
    Rectangle {
        id: button2
        x: 127
        y: 247
        width: 106
        height: 46

        anchors.verticalCenterOffset: 90
        anchors.horizontalCenterOffset: 0


        anchors.centerIn: parent
        Text {
            id:buttonLabel2
            text: qsTr("Quit")
            anchors.centerIn: parent
        }


        property color buttonColor: "lightblue"
        property color onHoverColor: "gold"
        property color borderColor: "white"


        MouseArea{
            anchors.fill: parent
            id:buttonMouseArea2
            x: 0
            y: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            onClicked:  {
                Qt.quit()
            }
            hoverEnabled: true
            onEntered: parent.border.color = parent.onHoverColor
            onExited:  parent.border.color = parent.borderColor
        }

        //determines the color of the button by using the conditional operator
        color: buttonMouseArea2.pressed ? Qt.darker(buttonColor, 1.5) : buttonColor
    }

}
