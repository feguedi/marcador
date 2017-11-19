import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

Page {
    id: pg

    background: Fondo {
        anchors.fill: parent
    }

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        anchors.margins: 20

        Pregunta {
            id: pregunta
            Layout.fillWidth: true
            height: pg.height * 0.2
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            DropShadow {
                anchors.fill: pregunta
                horizontalOffset: 3
                verticalOffset: 3
                radius: 8
                samples: 17
                color: "#80000000"
                source: pregunta
            }
        }

        Tablero {
            id: tablero
            height: pg.height * 0.6
            Layout.fillWidth: true
            // Layout.fillHeight: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        Respuestas {
            id: respuestas
            height: pg.height * 0.2
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            DropShadow {
                anchors.fill: respuestas
                horizontalOffset: 0
                verticalOffset: 0
                radius: 8
                samples: 17
                color: "#80000000"
                source: respuestas
            }
        }
    }
}
