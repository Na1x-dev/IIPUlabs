import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Page {
    property color color1: "lightgrey"
    property color color: "lightgrey"
    property int animationDuration: 500
    y: -1080
    id: page1
    width: window1.width
    height: window1.height
    visible: true

    Connections {
        target: _appCore
        onSendToQml: {
            str = cmd1
        }
        onPlusSignal: {
            countText.text1 = count
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
                height: page1.height
                width: page1.width*2
                color: colorWin
            }
            MyText {
            x: 960
            y: 950
            color1: "white"
            text1: "Dmesg"
            }

            MyTextField {
                id: textFieldRect
                x: 200
                y: 70
                str1: window1.str
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
                source: textFieldRect
                antialiasing: true
            }
        }

        Item {
            id: secondPage

            MyText {
                x: 970
                y: 300
                text1: "push the button to count++"
                color1: "white"
            }

            MyButton {
                id: countButton
                x: 910
                y: 380
                color1: mAreaCount.containsPress ? Qt.darker(page1.color, 1.2) : page1.color

                MyText {
                    id: countText
                    anchors.fill: parent
                    text1: "Push!"
                }

                MouseArea {
                    id: mAreaCount
                    anchors.fill: parent
                    onClicked: {
                        _appCore.plusSlot()
                    }
                }
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
        color1: mArea.containsPress ? Qt.darker(page1.color, 1.2) : page1.color

        Text {
            text: "Back"
            font.pointSize: 16
            anchors.centerIn: parent
            color: "#717171"
            font.family: "Montserrat"
        }

        MouseArea {
            id: mArea
            anchors.fill: parent
            onClicked: {
                page1.state="off";
            }
        }
    }

    state: "pg1"

    states: [
        State {
            name: "off"
            PropertyChanges {
                target: page1
                y: -1080
            }
        },

        State {
            name: "onn"
            PropertyChanges {
                target: page1
                y: 0
            }
        }
    ]

    transitions: [
        Transition {

            PropertyAnimation {
                target: page1
                duration: animationDuration
                easing.type: Easing.InOutExpo
                properties: "y"
            }
        }
    ]
}






