import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Rectangle {
    property string str1: ""
    //id: textFieldRect
    height: 770
    width: 1520
    //border.color: "#717171"
    radius: 20
    //border.width: 2
    color: "lightgrey"

    ScrollView {
        id: scrollView
        anchors.rightMargin: 20
        anchors.bottomMargin: 20
        anchors.leftMargin: 20
        anchors.topMargin: 20
        anchors.fill: parent
        contentWidth: availableWidth
        clip: true

        Text {
            id: text1
            x: 20
            y: 20
            width: 840
            height: 540
            verticalAlignment: Text.AlignTop
            elide: Text.ElideNone
            anchors.fill: parent
            wrapMode: Text.WordWrap
            color: "#717171"
            text: str1
            horizontalAlignment: Text.AlignLeft
            font.family: "Montserrat"
        }
    }
}
