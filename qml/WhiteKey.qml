import QtQuick 2.9
import QtMultimedia 5.8

Item {
    id: keyItem
    width: parent.width
    height: rectangleID.height
    property alias pitch: rectangleID.key
    signal playSound()

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
            Component.onCompleted: {
                keyItem.playSound.connect(play)
            }
        }
    }
}
