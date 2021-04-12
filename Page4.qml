import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Page {
    id: page4
    property color color1: "lightgrey"
    property color color: "lightgrey"
    property int animationDuration: 500

    y: -1080
    width: window1.width
    height: window1.height
    visible: true

    Rectangle {
        x: 0
        y: 0
        height: page4.height
        width: page4.width
        color: colorWin
    }

    MyText {
        x: 960
        y: 450
        text1: "
                                                                         Алгоритм записи в СОМ-порт

        1. В БА+3 заносим 1000 0000 для использования БА+0 в качестве делителя частоты
        2. В БА+0 занести делитель частоты (максимальная частота 115200/нужная частота)
        3. В БА+3 занести 0 в 7-й бит для использования БА+0 в качестве буфера данных, а в 5, 4, 3 - биты контроля
        - хх0 – отсутствие бита контроля по чётности/
        - 001 – бит контроля формируется по четному паритету;
        - 011 – бит контроля формируется по нечётному паритету;
        - 101 – бит контроля равен 1;
        - 111 – бит контроля равен 0.
        4. Из БА+5 считываем 5-й бит. Если 1, то
        5. В БА+0 заносим ASCII-код N-го символа данных, возвращаемся на п4, N++

                                                                        Алгоритм чтения из СОМ-порта

        1. В БА+3 заносим 1000 0000 для использования БА+0 в качестве делителя частоты
        2. В БА+0 занести делитель частоты (максимальная частота 115200/нужная частота)
        3. В БА+3 занести 0 в 7-й бит для использования БА+0 в качестве буфера данных, а в 5, 4, 3 - биты контроля
        - хх0 – отсутствие бита контроля по чётности/
        - 001 – бит контроля формируется по четному паритету;
        - 011 – бит контроля формируется по нечётному паритету;
        - 101 – бит контроля равен 1;
        - 111 – бит контроля равен 0.
        4. Из БА+5 считываем 1-й бит. Если 1, то
        5. Из БА+0 считываем ASCII-код N-го символа данных, возвращаемся на п4, N++ "

        color1: "white"
        fontSize1: 20
    }

    MyButton {
        x: 200
        y: 910
        color1: mArea2.containsPress ? Qt.darker(page4.color, 1.2) : page4.color

        MyText {
            anchors.fill: parent
            text1: "Back"
            fontSize1: 16
        }

        MouseArea {
            id: mArea2
            anchors.fill: parent
            onClicked: {
                page4.state="off";
            }
        }
    }

    state: "pg4"

    states: [
        State {
            name: "off"
            PropertyChanges {
                target: page4
                y: -1080
            }
        },
        State {
            name: "onn"
            PropertyChanges {
                target: page4
                y: 0
            }
        }
    ]

    transitions: [
        Transition {

            PropertyAnimation {
                target: page4
                duration: animationDuration
                easing.type: Easing.InOutExpo
                properties: "y"
            }
        }
    ]
}
