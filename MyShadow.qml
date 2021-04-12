import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

DropShadow{
    property string source: textFieldRect
    anchors.fill: source
    cached: true
    horizontalOffset: 0
    verticalOffset: 0
    radius: 16
    samples: 32
    color: "#202020"
    smooth: true
    source: source
    antialiasing: true
}
