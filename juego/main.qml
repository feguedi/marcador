import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Marcador")

    property int contador: 0
    property int equipo

    StackView {
        id: stackView
        anchors.fill: parent

        Marcador {
            anchors.fill: parent
            SetJuego {
                visible: false
                txtSet: contador
                anchors.fill: parent
            }
        }
    }
}
