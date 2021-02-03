import QtQuick 2.9
import QtMultimedia 5.8

Item {
    width: parent.width
    height: rectangleID.height
    property alias pitch: rectangleID.key

    Rectangle {
        id: rectangleID
        width: parent.width
        height: rootID.height / 8
        color: "white"
        border.color: "black"
        property string key: "C"

        SoundEffect {
            id: playKey
            source: "sounds/"+rectangleID.key+".wav"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Clicked White Key:" + parent.key)
                playKey.play()
            }
        }
    }
}
