import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Rectangle {
    id: capsLamp
    height: 0
    width: 0
    radius: 50
    color: "white"
    antialiasing: true

    Rectangle {
        height: 20
        width: 40
        x: 30
        y: 90
        radius: 5
        color: "#717171"
        antialiasing: true

    }
    Rectangle {
        height: 4
        width: 34
        x: 33
        y: 114
        radius: 5
        color: "#717171"
        antialiasing: true

    }
    Rectangle {
        height: 4
        width: 34
        x: 33
        y: 122
        radius: 5
        color: "#717171"
        antialiasing: true

    }
    Rectangle {
        height: 4
        width: 34
        x: 33
        y: 130
        radius: 5
        color: "#717171"
        antialiasing: true

    }
    Rectangle {
        height: 10
        width: 20
        x: 40
        y: 130
        radius: 3
        color: "#717171"
        antialiasing: true

    }
    Rectangle {
        id: p1
        height: 4
        width: 30
        x: -40
        y: 48
        radius: 5
        color: "white"
        antialiasing: true
        opacity: 0
    }
    Rectangle {
        id: p2
        height: 30
        width: 4
        x: 48
        y: -40
        radius: 5
        color: "white"
        antialiasing: true
        opacity: 0
    }
    Rectangle {
        id: p3
        height: 4
        width: 30
        x: 110
        y: 48
        radius: 5
        color: "white"
        antialiasing: true
        opacity: 0
    }
    Rectangle {
        id: p4
        height: 4
        width: 30
        x: 88
        y: -6
        radius: 5
        rotation: -45
        color: "white"
        antialiasing: true
        opacity: 0
    }
    Rectangle {
        id: p5
        height: 4
        width: 30
        x: -18
        y: -6
        radius: 5
        rotation: 45
        color: "white"
        antialiasing: true
        opacity: 0
    }
    Rectangle {
        id: p6
        height: 4
        width: 30
        x: 88
        y: 106
        radius: 5
        rotation: 45
        color: "white"
        antialiasing: true
        opacity: 0
    }
    Rectangle {
        id: p7
        height: 4
        width: 30
        x: -18
        y: 106
        radius: 5
        rotation: -45
        color: "white"
        antialiasing: true
        opacity: 0
    }
    Rectangle {
        id: round1
        height: 100
        width: 100
        radius: 50
        color: "#717171"
        antialiasing: true

    }

    DropShadow{
        id: shd
        anchors.fill: source
        cached: true
        horizontalOffset: 0
        verticalOffset: 0
        radius: 128
        samples: 256
        color: "white"
        smooth: true
        source: round1
        antialiasing: true
        opacity: 0
    }

    state: "lmp"

    states: [
        State {
            name: "off"
            PropertyChanges {
                target: shd
                opacity: 0
            }
            PropertyChanges {
                target: p1
                opacity: 0
            }
            PropertyChanges {
                target: p2
                opacity: 0
            }
            PropertyChanges {
                target: p3
                opacity: 0
            }
            PropertyChanges {
                target: p4
                opacity: 0
            }
            PropertyChanges {
                target: p5
                opacity: 0
            }
            PropertyChanges {
                target: p6
                opacity: 0
            }
            PropertyChanges {
                target: p7
                opacity: 0
            }
            PropertyChanges {
                target: round1
                color: "#717171"
            }
        },

        State {
            name: "onn"
            PropertyChanges {
                target: shd
                opacity: 1
            }
            PropertyChanges {
                target: p1
                opacity: 1
            }
            PropertyChanges {
                target: p2
                opacity: 1
            }
            PropertyChanges {
                target: p3
                opacity: 1
            }
            PropertyChanges {
                target: p4
                opacity: 1
            }
            PropertyChanges {
                target: p5
                opacity: 1
            }
            PropertyChanges {
                target: p6
                opacity: 1
            }
            PropertyChanges {
                target: p7
                opacity: 1
            }
            PropertyChanges {
                target: round1
                color: "white"
            }
        }
    ]

    transitions: [
        Transition {

            PropertyAnimation {
                target: shd
                duration: 300
                easing.type: Easing.InOutQuad
                properties: "opacity"

            }
            PropertyAnimation {
                target: p1
                duration: 300
                easing.type: Easing.InOutQuad
                properties: "opacity"

            }
            PropertyAnimation {
                target: p2
                duration: 300
                easing.type: Easing.InOutQuad
                properties: "opacity"

            }
            PropertyAnimation {
                target: p3
                duration: 300
                easing.type: Easing.InOutQuad
                properties: "opacity"

            }
            PropertyAnimation {
                target: p4
                duration: 300
                easing.type: Easing.InOutQuad
                properties: "opacity"

            }
            PropertyAnimation {
                target: p5
                duration: 300
                easing.type: Easing.InOutQuad
                properties: "opacity"

            }
            PropertyAnimation {
                target: p6
                duration: 300
                easing.type: Easing.InOutQuad
                properties: "opacity"

            }
            PropertyAnimation {
                target: p7
                duration: 300
                easing.type: Easing.InOutQuad
                properties: "opacity"

            }
            PropertyAnimation {
                target: round1
                duration: 300
                easing.type: Easing.InOutQuad
                properties: "color"

            }
        }
    ]
}
