import QtQuick 2.0
import QtQuick.Controls 2.1

Rectangle {
    id: root
    color: "#424242"
    radius: 8

    Label {
        id: rsp1
        x: (root.width / 4) - (width / 2)
        y: root.height / 3
        width: root.width / 3
        color: "#fafafa"
        wrapMode: Text.WordWrap
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        text: qsTr("Label")
    }

    Label {
        id: rsp2
        x: ((root.width / 4) * 3) - (width / 2)
        y: root.height / 3
        width: root.width / 3
        color: "#fafafa"
        wrapMode: Text.WordWrap
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        text: qsTr("Label")
    }

    Label {
        id: rsp3
        x: (root.width / 2) - (width / 2)
        y: (root.height / 3) * 2
        width: root.width / 3
        color: "#fafafa"
        wrapMode: Text.WordWrap
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        text: qsTr("Label")
    }


}
