import QtQuick 2.0
import QtQuick.Controls 2.1

Rectangle {
    id: root
    property alias lbl_prg: lbl.text
    color: "#263238"
    border.color: "#eceff1"
    border.width: 5
    radius: 8

    Label {
        id: lbl
        anchors.fill: parent
        anchors.margins: 20
        verticalAlignment: Text.AlignVCenter
        color: root.border.color
        font.pointSize: 26
    }
}
