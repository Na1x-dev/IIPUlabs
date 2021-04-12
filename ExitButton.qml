import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

MyButton {
    id: exitButton
    color: "#CD5C5C"
    color1: mArea1.containsPress ? Qt.darker(exitButton.color, 1.2) : exitButton.color

    Rectangle {
        x: 47
        y: 10
        color: "lightgrey"
        height: 80
        width: 4
        rotation: 45
        antialiasing: true
    }

    Rectangle {
        x: 47
        y: 10
        color: "lightgrey"
        height: 80
        width: 4
        rotation: -45
        antialiasing: true
    }

    MouseArea {
        id: mArea1
        anchors.fill: parent
        onClicked: {
            exitPage.state="onn"
            //window1.color=Qt.darker(window1.color, 1.3)
        }
    }
}

