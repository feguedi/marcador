import QtQuick 2.0

Item {
    id: root
    property string activo: "wrong"

    /*
    * Valores posibles para este objeto
    *
    * true
    * false
    * wrong
    *
    */

    height: 100
    width: 100

    Rectangle {
        anchors.fill: parent
        color: activo == "false" ? "#ccd1d3" : (activo == "true" ? "#fdd835" : "#f44336")
        clip: true

        Canvas {
            id: canvas
            anchors.fill: parent
            opacity: 0.7
            onPaint: {
                var ctx = getContext("2d")
                ctx.resetTransform()
                ctx.lineWidth = 4
                ctx.strokeStyle = "#424242"
                ctx.fillStyle = activo == "false" ? "#424242" : (activo == "true" ? "#ef6c00" : "#b71c1c")

                ctx.beginPath()
                ctx.moveTo(root.width / 3, root.height * 0.1)
                ctx.lineTo(root.width - (root.width * 0.1), root.height * 0.1)
                ctx.lineTo(root.width - (root.width * 0.1), (root.height / 3) * 2)
                ctx.lineTo(root.width / 3, root.height * 0.1)
                ctx.fill()
            }
        }
    }
}
