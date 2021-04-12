import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.1

Item {
    id: root
    property int size: 100
    property color color1: "lightgrey"
    property color color: "lightgrey"


    x: 80
    y: 80
    width: size
    height: 100
    signal clicked()

    Rectangle {
        id: rectangleId
        anchors.fill: parent
        radius: 25
        color: mArea.containsPress ? Qt.darker(root.color1, 1.2) : root.color1

        MouseArea {
            id: mArea
            anchors.fill: parent
            onClicked: {

            }
        }
    }

    DropShadow{
        anchors.fill: source
        cached: true
        horizontalOffset: 0
        verticalOffset: 0
        radius: 16
        samples: 32
        color: "#202020"
        smooth: true
        source: rectangleId
        antialiasing: true
    }
}




