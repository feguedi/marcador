import QtQuick 2.0
import QtQuick.Controls 2.1

Rectangle {
    color: "white"
    Image {
        id: img
        anchors.fill: parent
        source: "./background.jpg"
        opacity: 0.2
        fillMode: Image.Tile
        clip: true
    }
}
