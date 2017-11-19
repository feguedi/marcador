import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1

Page {
    id: pg
    property var initArray: ["true", "wrong", "true", "true", "false"]
    property alias array1: rpt1
    property alias array2: rpt2
    property alias array3: rpt3

    background: Rectangle {
        color: "transparent"
    }

    RowLayout {
        id: row
        anchors.fill: parent
        ColumnLayout {
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.fill: parent

            RowLayout {
                id: row1
                Layout.fillHeight: true
                Layout.fillWidth: true
                Label {
                    text: qsTr("1")
                    font.pointSize: 36
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    Layout.fillHeight: true
                }
                Repeater {
                    id: rpt1
                    Layout.fillHeight: true
                    model: initArray
                    DelegadoCasilla {
                        activo: modelData
                    }
                }
            }

            RowLayout {
                id: row2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Label {
                    text: qsTr("2")
                    font.pointSize: 36
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
                Repeater {
                    id: rpt2
                    Layout.fillHeight: true
                    model: initArray
                    DelegadoCasilla {
                        activo: modelData
                    }
                }
            }

            RowLayout {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Label {
                    Layout.fillHeight: true
                    text: qsTr("3")
                    font.pointSize: 36
                }
                Repeater {
                    id: rpt3
                    model: initArray
                    DelegadoCasilla {
                        activo: modelData
                    }
                }
            }
        }

        Rectangle {
            width: 200
            color: "#d31e1e"
            Layout.fillHeight: true

            Label {
                anchors.fill: parent
                font.capitalization: Font.AllUppercase
                font.bold: true
                font.letterSpacing: 20
                font.pixelSize: 60
                rotation: 90
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                text: qsTr("FINAL")
            }
        }
    }

    Cronometro {
        id: crono
        width: 50
        height: width
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        Component.onCompleted: crnmt.stop()
    }
}
