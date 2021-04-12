import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Page {
    property color color1: "lightgrey"
    property color color: "lightgrey"
    property int animationDuration: 500
    property bool work32: false
    property string led2: ""

    focus: true
    y: -1080
    id: page3
    width: window1.width
    height: window1.height
    visible: true

    Connections {
        target: _appCore
        onLab32Signal: {
            codeOfIndicators.text1 =  led1;
            led2 = led1;
        }
    }

    Timer {
        interval: 15
        running: true
        repeat: true
        onTriggered: {_appCore.lab32Slot()

            if(work32==true){
                information.state = "onnn";
                switch(led2)
                {
                case "1004":
                    capsLamp.state = "off";
                    numLamp.state = "off";

                    break;
                case "0000":
                    capsLamp.state = "off";
                    numLamp.state = "off";

                    break;
                case "1005":
                    capsLamp.state = "onn";
                    numLamp.state = "off";

                    break;
                case "0001":
                    capsLamp.state = "onn";
                    numLamp.state = "off";

                    break;
                case "1006":
                    capsLamp.state = "off";
                    numLamp.state = "onn";

                    break;
                case "0002":
                    capsLamp.state = "off";
                    numLamp.state = "onn";

                    break;
                case "1007":
                    capsLamp.state = "onn";
                    numLamp.state = "onn";

                    break;
                case "0003":
                    capsLamp.state = "onn";
                    numLamp.state = "onn";
                    break;
                    // }
                }
            }
            if(work32==false)
            {
                information.state = "offf";
                capsLamp.state = "off";
                numLamp.state = "off";

            }
        }
    }

    Rectangle {
        id: rectLab3
        x: 0
        y: 0
        height: page3.height
        width: page3.width
        color: colorWin
        focus: true
        Keys.onPressed:
        {

            keyCode.text1 = event.key

            if(event.key === 49)
            {
                _appCore.lab31Slot();
                timerLab31.running = true;

            }
            if(event.key === 16777235 )
            {
                work32 = true;
            }
            else if(event.key === 16777237 )
            {
                work32 = false;
            }
            if(event.key>=16777264 && event.key<=16777275)
            {
                _appCore.lab33Slot();
            }
        }

        Timer {
            id: timerLab31
            interval: 2000
            running: false
            repeat: false
            onTriggered: {
            _appCore.lab31Slot();
            }
        }

        MyText {
            id: keyCode
            text1: "wipe the system"
            visible: false
            x: 500
            y: 500
            color1: "WHITE"
        }

        MyText {
            id: information
            x: 970
            y: 400
            text1: "Нажмите клавишу любого индикатора"
            color1: "white"
            state: "inf"

            states: [
                State {
                    name: "offf"
                    PropertyChanges {
                        target: information
                        opacity: 0
                    }
                },
                State {
                    name: "onnn"
                    PropertyChanges {
                        target: information
                        opacity: 1
                    }
                }
            ]

            transitions: [
                Transition {

                    PropertyAnimation {
                        target: information
                        duration: animationDuration
                        easing.type: Easing.InOutExpo
                        properties: "opacity"
                    }
                }
            ]
        }

        MyText {
            id: codeOfIndicators
            x: 500
            y: 900
            visible: false
            text1: ""
            color1: "white"
        }
    }

    MyText {
        x: 750
        y: 800
        text1: "Caps Lock"
        color1: "white"
    }

    MyText {
        x: 1210
        y: 800
        text1: "Num Lock"
        color1: "white"
    }

    MyText {
        x: 960
        y: 150
        text1: "- Нажмите [1], чтобы включить и выключить все индикаторы на несколько секунд;\n- Нажмите [стрелка вверх], чтобы перейти к анализу индикаторов и [стрелка вниз], \nчтобы выйти из него;\n- Нажмите любую функциональную клавишу, чтобы инвертировать значение Caps Lock и Num Lock."
        color1: "white"
    }

    Lamp {
        id: capsLamp
        x: 700
        y: 600
    }

    Lamp {
        id: numLamp
        x: 1160
        y: 600
    }

    MyButton {
        x: 200
        y: 610
        color1: mArea1.containsPress ? Qt.darker(page3.color, 1.2) : page3.color
        visible: false

        MyText {
            anchors.fill: parent
            text1: "Caps"
            fontSize1: 16
        }

        MouseArea {
            id: mArea1
            anchors.fill: parent
            onClicked: {
                _appCore.lab31Slot();
            }
        }
    }

    MyButton {
        x: 200
        y: 910
        color1: mArea2.containsPress ? Qt.darker(page3.color, 1.2) : page3.color

        MyText {
            anchors.fill: parent
            text1: "Back"
            fontSize1: 16
        }

        MouseArea {
            id: mArea2
            anchors.fill: parent
            onClicked: {
                page3.state="off";
            }
        }
    }

    state: "pg3"

    states: [
        State {
            name: "off"
            PropertyChanges {
                target: page3
                y: -1080
            }
        },
        State {
            name: "onn"
            PropertyChanges {
                target: page3
                y: 0
            }
        }
    ]

    transitions: [
        Transition {

            PropertyAnimation {
                target: page3
                duration: animationDuration
                easing.type: Easing.InOutExpo
                properties: "y"
            }
        }
    ]
}

