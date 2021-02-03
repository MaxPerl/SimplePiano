import QtQuick 2.9
import QtMultimedia 5.8

Item {
    width: parent.width
    height: rectangleID.height
    z: 2
    property alias pitch: rectangleID.key

    Rectangle {
        id: rectangleID
        width: parent.width * 3/4
        height: rootID.height / 8 / 1.2
        color: "black"
        border.color: "black"
        property string key: "Cis"

        SoundEffect {
            id: playKey
            source: "sounds/"+rectangleID.key+".wav"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Clicked Black Key:" + parent.key)
                playKey.play()
            }
        }
    }
}
