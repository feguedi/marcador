import QtQuick 2.0
import QtQuick.Controls 2.1

Rectangle {
    id: root
    color: "transparent"
    property alias crnmt: timer
    property int tempo: 0

    Dial {
        id: dial
        anchors.fill: parent
        anchors.margins: 10
        enabled: false
        value: tempo / 20

        handle: Rectangle {
            width: 0
            height: 0
            antialiasing: true
        }

        Label {
            id: tmp
            anchors.fill: parent
            clip: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: Math.min(dial.height, dial.width) - 75
            text: tempo.toString()
        }
    }

    Timer {
        id: timer
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            if(tempo < 20) tempo++
            else timer.stop()
        }
    }
}
