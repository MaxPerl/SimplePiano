import QtQuick 2.0

Rectangle {
    color: "black"
    property var isLocked: false
    signal lockActivated()
    signal lockDeactivated()
    Image {
        id: lockImage
        anchors.fill: parent
        source: "../assets/lock_opened.svg"
        rotation: 90
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (parent.isLocked)
            {
                lockImage.source = "../assets/lock_opened.svg"
                parent.isLocked = false
                parent.lockDeactivated()
            }
            else
            {
                lockImage.source = "../assets/lock_closed.svg"
                parent.isLocked = true
                parent.lockActivated()
            }
        }
    }
}
