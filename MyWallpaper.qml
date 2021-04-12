import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.1

Rectangle {
    id: wallpaper1
    height: 1080
    width: 1920
    color: Qt.darker(colorWin, 1.4)

    Rectangle {
    id: rect1
    color: Qt.darker(colorWin, 1.2)
    x: 500
    y: -300
    height: 2000
    width: 500
    rotation: -30
    antialiasing: true
    }

    DropShadow{

        anchors.fill: source
        cached: true
        horizontalOffset: 0
        verticalOffset: 0
        rotation: -30
        radius: 16
        samples: 32
        color: "#202020"
        smooth: true
        source: rect1
        antialiasing: true
    }
    Rectangle {
    id: rect2
    color: colorWin
    x: 550
    y: -300
    height: 2000
    width: 500
    rotation: 30
    antialiasing: true
    }

    DropShadow{

        anchors.fill: source
        cached: true
        horizontalOffset: 0
        verticalOffset: 0
        rotation: 30
        radius: 16
        samples: 32
        color: "#202020"
        smooth: true
        source: rect2
        antialiasing: true
    }
    Rectangle {
    id: rect3
    color: Qt.darker(colorWin, 0.9)
    x: 900
    y: -300
    height: 2000
    width: 500
    rotation: -30
    antialiasing: true
    }

    DropShadow{

        anchors.fill: source
        cached: true
        horizontalOffset: 0
        verticalOffset: 0
        rotation: -30
        radius: 16
        samples: 32
        color: "#202020"
        smooth: true
        source: rect3
        antialiasing: true
    }
    Rectangle {
    id: rect4
    color: Qt.darker(Qt.lighter(colorWin, 2.0), 1.5)
    x: 850
    y: -300
    height: 2000
    width: 500
    rotation: 30
    antialiasing: true
    }

    DropShadow{

        anchors.fill: source
        cached: true
        horizontalOffset: 0
        verticalOffset: 0
        rotation: 30
        radius: 16
        samples: 32
        color: "#202020"
        smooth: true
        source: rect4
        antialiasing: true
    }
    Rectangle {
    id: rect5
    color: Qt.darker(Qt.lighter(colorWin, 2.3), 1.5)
    x: 1300
    y: -400
    height: 2000
    width: 700
    rotation: -30
    antialiasing: true
    }

    DropShadow{

        anchors.fill: source
        cached: true
        horizontalOffset: 0
        verticalOffset: 0
        rotation: -30
        radius: 16
        samples: 32
        color: "#202020"
        smooth: true
        source: rect5
        antialiasing: true
    }
    Rectangle {
    id: rect6
    color: "#cccccc"
    x: 1350
    y: -300
    height: 2000
    width: 750
    rotation: 30
    antialiasing: true
    }

    DropShadow{

        anchors.fill: source
        cached: true
        horizontalOffset: 0
        verticalOffset: 0
        rotation: 30
        radius: 16
        samples: 32
        color: "#202020"
        smooth: true
        source: rect6
        antialiasing: true
    }
}
