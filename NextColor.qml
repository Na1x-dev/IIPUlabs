import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12





MouseArea
{
    id: mArea
    anchors.fill: parent
    onClicked:
    {

        anim1.running = true;
        anim2.running = true;
    }

}
