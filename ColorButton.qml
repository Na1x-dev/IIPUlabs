import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Item {
    id: root
    property int size: 100
    property color color: "lightgrey"
    property color wcolor: "#000999999"
    property color exitcolor: "green"

    x: 1080
    y: 620
    width: size
    height: 100
    signal clicked()

    Rectangle {
        id: rectangleId
        anchors.fill: parent
        radius: 25
        color: mArea.containsPress ? Qt.darker(root.color, 1.2) : root.color
        antialiasing: true
        MouseArea {
            id: mArea
            anchors.fill: parent
            onClicked: {
                anim1.running = true;
            }
        }

        SequentialAnimation {
            id: anim1

                PropertyAnimation {
                target: window1
                property: "colorWin"
                to: color
                duration: 500
            }
        }
    }
}
