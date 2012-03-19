// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "Core"   // подключаем модуль с кнопками


Rectangle {
    width: 360
    height: 360

    //    выравнивание в один столбец
    Column
    {
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10

        Text {
            id:txt
            text: qsTr("Hello World")
        }

        Button {
            id: buttonRun
            text: "Выполнить"
            onClicked:  {
                console.log(parent.text + " clicked" )  //вызываем функции из c++
                console.log(exampleclass.hello())
                txt.text = exampleclass.hello()+exampleclass.hello2()
            }
        }

        Button {
            id: buttonQuit
            text: "Выход"
            onClicked:  {
                Qt.quit()
            }
        }


    }
}
