import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Page {
    property color color1: "lightgrey"
    property color color: "lightgrey"
    property int animationDuration: 500


    y: -1080
    id: page2
    width: window1.width
    height: window1.height
    visible: true

    Connections {
        target: _appCore
        onDevicesSignal: {
            textFieldRect1.str1 =  devices;
        }
        onCpuInfoSignal: {
            textFieldRect2.str1 =  cpuInfo;
        }
        onMemInfoSignal: {
            textFieldRect3.str1 =  memInfo;
        }

    }

    SwipeView {

        id: view
        currentIndex: 1
        anchors.fill: parent

        Item {
            id: firstPage

            Rectangle {
                x: 0
                y: 0
                height: page2.height
                width: page2.width
                color: colorWin
            }

            MyText {
            x: 960
            y: 950
            color1: "white"
            text1: "Devices"
            }

            MyTextField {
                id: textFieldRect1
                x: 200
                y: 70
            }

            DropShadow {
                anchors.fill: source
                cached: true
                horizontalOffset: 0
                verticalOffset: 0
                radius: 16
                samples: 32
                color: "#202020"
                smooth: true
                source: textFieldRect1
                antialiasing: true
            }
        }

        Item {
            id: secondPage

            Rectangle {
                x: 0
                y: 0
                height: page2.height
                width: page2.width
                color: colorWin
            }

            MyText {
            x: 960
            y: 950
            color1: "white"
            text1: "CPU Info"
            }

            MyTextField {
                id: textFieldRect2
                x: 200
                y: 70
            }

            DropShadow {
                anchors.fill: source
                cached: true
                horizontalOffset: 0
                verticalOffset: 0
                radius: 16
                samples: 32
                color: "#202020"
                smooth: true
                source: textFieldRect2
                antialiasing: true
            }
        }

        Item {
            id: thirdPage

            Rectangle {
                x: 0
                y: 0
                height: page2.height
                width: page2.width
                color: colorWin
            }

            MyText {
            x: 960
            y: 950
            color1: "white"
            text1: "Memory Info"
            }

            MyTextField {
                id: textFieldRect3
                x: 200
                y: 70
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
                source: textFieldRect3
                antialiasing: true
            }
        }
    }


    PageIndicator {
        id: indicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    MyButton {
        x: 200
        y: 910
        color1: mArea.containsPress ? Qt.darker(page2.color, 1.2) : page2.color

        MyText {
            text1: "Back"
            fontSize1: 16
            anchors.centerIn: parent
        }

        MouseArea {
            id: mArea
            anchors.fill: parent
            onClicked: {
                page2.state="off";
            }
        }
    }

    state: "pg2"

    states: [
        State {
            name: "off"
            PropertyChanges {
                target: page2
                y: -1080
            }
        },

        State {
            name: "onn"
            PropertyChanges {
                target: page2
                y: 0
            }
        }
    ]

    transitions: [
        Transition {

            PropertyAnimation {
                target: page2
                duration: animationDuration
                easing.type: Easing.InOutExpo
                properties: "y"
            }
        }
    ]
}

