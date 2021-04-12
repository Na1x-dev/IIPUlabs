import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Window {
    property string str: ""
    property color colorWin: "#000555555"

    id: window1
    visibility: Window.FullScreen
    visible: true
    title: qsTr("Ooops")
    color: colorWin

    MyWallpaper {
        id: wallpaper1
        x: 0
        y: 0
    }

    MyText {
        x: 945
        y: 120
        fontSize1: 30
        text1: qsTr("pages                                                                                                     colors")
        color1: "white"
    }

    ColorButton {
        id: color1
        x: 1600
        y: 250
        color: "#000555555"
    }

    ColorButton {
        id: color2
        x: 1600
        y: 370
        color: "#717171"
    }

    ColorButton {
        id: color3
        x: 1600
        y: 490
        color: "#967498" //"lightgreen"
    }

    ColorButton {
        id: color4
        x: 1600
        y: 610
        color: "#7f5663" //"#003333"
    }

    ColorButton {
        id: color5
        x: 1600
        y: 730
        color: "#66618b"
    }

    ColorButton {
        id: color6
        x: 1600
        y: 850
        color: "#588788"
    }

    MyButton {
        id: nPage1
        x: 200
        y: 250
        color1: mArea1.containsPress ? Qt.darker(nPage1.color, 1.2) : nPage1.color

        MyText {
            anchors.fill: parent
            text1: "I"
        }

        MouseArea {
            id: mArea1
            anchors.fill: parent
            onClicked: {
                page1.state="onn"
                _appCore.receiveFromQml()
            }
        }
    }

    MyButton {
        id: nPage2
        x: 200
        y: 370
        color1: mArea2.containsPress ? Qt.darker(nPage2.color, 1.2) : nPage2.color

        MyText {
            anchors.fill: parent
            text1: "II"
        }

        MouseArea {
            id: mArea2
            anchors.fill: parent
            onClicked: {
                page2.state="onn"
                _appCore.devicesSlot()
                _appCore.cpuInfoSlot()
                _appCore.memInfoSlot()
            }
        }
    }

    MyButton {
        id: nPage3
        x: 200
        y: 490
        color1: mArea3.containsPress ? Qt.darker(nPage3.color, 1.2) : nPage3.color

        MyText {
            anchors.fill: parent
            text1: "III"
        }

        MouseArea {
            id: mArea3
            anchors.fill: parent
            onClicked: {
                page3.state="onn"
                page3.focus=true
            }
        }
    }

    MyButton {
        id: nPage4
        x: 200
        y: 610
        color1: mArea4.containsPress ? Qt.darker(nPage4.color, 1.2) : nPage4.color

        MyText {
            anchors.fill: parent
            text1: "IV"
        }

        MouseArea {
            id: mArea4
            anchors.fill: parent
            onClicked: {
                page4.state="onn"

            }
        }
    }

    ExitButton {
        id: exitButton
        x: 200
        y: 850
    }

    Page1 {
        id: page1
    }

    Page2 {
        id: page2
    }

    Page3 {
        id: page3

    }

    Page4 {
        id: page4
    }

    ExitPage {
        id: exitPage
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.33;height:480;width:640}
}
##^##*/
