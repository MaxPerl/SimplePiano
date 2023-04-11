import QtQuick 2.9
import QtMultimedia 5.8

Item {
    id: keyItem
    width: parent.width
    height: rectangleID.height
    z: 2
    property alias pitch: rectangleID.key
    signal playSound()

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
            Component.onCompleted: {
                keyItem.playSound.connect(play)
            }
        }
    }
}
