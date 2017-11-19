import QtQuick 2.0
import QtQuick.Controls 2.1
import QtGraphicalEffects 1.0

Rectangle {
    id: root
    height: 200
    width: 200
    property alias txtSet: lbl.text

    color: "transparent"

    Label{
        id: lbl
        anchors.fill: parent
        font.pixelSize: root.height - 10
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        color: "black"
        text: qsTr("2")
        font.family: "Tahoma"
    }

    DropShadow {
        anchors.fill: lbl
        horizontalOffset: 4
        verticalOffset: 4
        radius: 8
        samples: 17
        color: "#80000000"
        source: lbl
    }
}
