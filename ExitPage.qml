import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Page{
    property color color1: "lightgrey"
    property color color: "lightgrey"
    property color exitcol: "green"
    property int animationDuration: 500

    id: exitPage
    x: 640
    y: 1090
    height: 360
    width: 640
    visible: true

    Rectangle {
        id: exitRect
        x: -10
        y: -10
        height: 380
        width: 660
        color: colorWin
        radius: 25
        //border.width: 2
        //border.color: "#717171"
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
        source: exitRect
        antialiasing: true
    }

    MyText {
        x: 320
        y: 70
        color1: "White"
        text1: "Вы действительно хотите выйти?"
    }

    MyButton {
        x: 120
        y: 200
        id: back
        color1: mArea1.containsPress ? Qt.darker(exitPage.color, 1.2) : exitPage.color

        MyText {
            text1: "No"
            fontSize1: 16
            anchors.centerIn: parent
        }

        MouseArea {
            id: mArea1
            anchors.fill: parent
            onClicked: {
                window1.color=Qt.lighter(window1.color, 1.3)
                exitPage.state="off";
            }
        }
    }

    MyButton {
        x: 420
        y: 200
        id: exit
        color1: mArea2.containsPress ? Qt.darker(exitPage.color, 1.2) : exitPage.color

        MyText {
            text1: "Yes"
            fontSize1: 16
            anchors.centerIn: parent
        }

        MouseArea {
            id: mArea2
            anchors.fill: parent
            onClicked: {
                Qt.quit();
            }
        }
    }

    state: "extpg"

    states: [

        State {
            name: "off"

            PropertyChanges {
                target: exitPage
                y: 1090
            }
        },

        State {
            name: "onn"

            PropertyChanges {
                target: exitPage
                y: 360
            }
        }
    ]

    transitions: [

        Transition {

            PropertyAnimation {
                target: exitPage
                duration: animationDuration
                easing.type: Easing.InOutExpo
                properties: "y"
            }
        }
    ]
}

