import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Item {
    id: root
    property string text1: ""
    property color color1: "#717171"
    property int fontSize1: 24

    Text {
        anchors.centerIn: parent
        font.pointSize: fontSize1
        color: color1
        font.family: "Montserrat"
        text: text1
    }
}
