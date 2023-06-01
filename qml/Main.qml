import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import Ubuntu.Components 1.3


MainView {
    id: rootID
    objectName: 'mainView'
    applicationName: 'simplepiano.perlmax'
    automaticOrientation: false
    visible: true
    width: units.gu(45)
    height: units.gu(75)
    

    property int keyWide: height / 8
    property double blackKeyWide: width * 1/4

    Flickable {
        width: parent.width
        height: parent.height
        contentHeight: keyWide*22
        contentY: keyWide*7
        pixelAligned: true
        boundsBehavior: Flickable.StopAtBounds
        id: keyboardFlickable

        Rectangle {
            id: pianoId
            anchors.fill: parent

            MultiPointTouchArea {
                anchors.fill: parent
                onPressed: (points) => {
                    for (var i = 0; i < points.length; i++)
                    {
                        //console.log("pressed " + points[i].x + " " + points[i].y + " item pitch: " + pianoId.childAt(points[i].x, points[i].y).pitch);
                        pianoId.childAt(points[i].x, points[i].y).playSound()
                    }
                }
            }

            WhiteKey {
                pitch: "C_"
            }

            WhiteKey {
                y: keyWide
                pitch: "D_"
            }

            WhiteKey {
                y: keyWide * 2
                pitch: "E_"
            }

            WhiteKey {
                y: keyWide * 3
                pitch: "F_"
            }

            WhiteKey {
                y: keyWide * 4
                pitch: "G_"
            }

            WhiteKey {
                y: keyWide * 5
                pitch: "A_"
            }

            WhiteKey {
                y: keyWide * 6
                pitch: "H_"
            }

            WhiteKey {
                y: keyWide * 7
                pitch: "C"
            }

            WhiteKey {
                y: keyWide * 8
                pitch: "D"
            }

            WhiteKey {
                y: keyWide * 9
                pitch: "E"
            }

            WhiteKey {
                y: keyWide * 10
                pitch: "F"
            }

            WhiteKey {
                y: keyWide * 11
                pitch: "G"
            }

            WhiteKey {
                y: keyWide * 12
                pitch: "A"
            }

            WhiteKey {
                y: keyWide * 13
                pitch: "H"
            }

            WhiteKey {
                y: keyWide * 14
                pitch: "c"
            }

            WhiteKey {
                y: keyWide * 15
                pitch: "d"
            }

            WhiteKey {
                y: keyWide * 16
                pitch: "e"
            }

            WhiteKey {
                y: keyWide * 17
                pitch: "f"
            }

            WhiteKey {
                y: keyWide * 18
                pitch: "g"
            }

            WhiteKey {
                y: keyWide * 19
                pitch: "a"
            }

            WhiteKey {
                y: keyWide * 20
                pitch: "h"
            }

            WhiteKey {
                y: keyWide * 21
                pitch: "c-"
            }

            //Black keys needs to come after White keys so that childAt() function sees them as being on top of the white keys
            //without the change WhiteKey right after the BlackKey would receive the play signal incorrectly when right half of the black key is pressed
            //The z property does not seem to make a difference for the childAt() function (maybe there exists a better solution?)

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: keyWide - (height / 2)
                x: blackKeyWide
                pitch: "Cis_"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 2) - (height / 2 ))
                x: blackKeyWide
                pitch: "Dis_"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 4) - (height / 2 ))
                x: blackKeyWide
                pitch: "Fis_"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 5) - (height / 2 ))
                x: blackKeyWide
                pitch: "Gis_"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 6) - (height / 2 ))
                x: blackKeyWide
                pitch: "Ais_"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 8) - (height / 2 ))
                x: blackKeyWide
                pitch: "Cis"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 9) - (height / 2 ))
                x: blackKeyWide
                pitch: "Dis"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 11) - (height / 2 ))
                x: blackKeyWide
                pitch: "Fis"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 12) - (height / 2 ))
                x: blackKeyWide
                pitch: "Gis"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 13) - (height / 2 ))
                x: blackKeyWide
                pitch: "Ais"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 15) - (height / 2 ))
                x: blackKeyWide
                pitch: "cis"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 16) - (height / 2 ))
                x: blackKeyWide
                pitch: "dis"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 18) - (height / 2 ))
                x: blackKeyWide
                pitch: "fis"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 19) - (height / 2 ))
                x: blackKeyWide
                pitch: "gis"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 20) - (height / 2 ))
                x: blackKeyWide
                pitch: "ais"
            }

        } //Rectangle pianoID

    } //Flickable

    property var panelButtonSize: keyWide * 0.6

    Rectangle
    {
        id: pitchDownButton
        x: parent.width - panelButtonSize
        y: 0
        width: panelButtonSize
        height: panelButtonSize
        color: "black"
        border.width: 1
        border.color: "slategray"
        Icon {
            anchors.fill: parent
            name: "toolkit_arrow-up"
            color: "gray"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                keyboardFlickable.contentY = Math.max(0, keyboardFlickable.contentY - keyWide * 7)
            }
        }
    }

    LockButton
    {
        id: lockButtonInstance
        anchors.top: pitchDownButton.bottom
        anchors.horizontalCenter: pitchDownButton.horizontalCenter
        width: panelButtonSize
        height: panelButtonSize
        border.width: 1
        border.color: "slategray"
        onLockActivated: keyboardFlickable.interactive = false
        onLockDeactivated: keyboardFlickable.interactive = true
    }



    Rectangle
    {
        id: pitchUpButton
        anchors.top: lockButtonInstance.bottom
        anchors.horizontalCenter: lockButtonInstance.horizontalCenter
        width: panelButtonSize
        height: panelButtonSize
        color: "black"
        border.width: 1
        border.color: "slategray"
        Icon {
            anchors.fill: parent
            name: "toolkit_arrow-down"
            color: "gray"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                keyboardFlickable.contentY =
                        Math.min(keyboardFlickable.contentHeight - keyboardFlickable.height, keyboardFlickable.contentY + keyWide * 7)
            }
        }
    }

    ScrollBar {
        active: true
        interactive: false
        orientation: Qt.Vertical
        anchors.top: pitchDownButton.top
        anchors.bottom: pitchUpButton.bottom
        anchors.right: pitchDownButton.left
        policy: ScrollBar.AlwaysOn
        height: pitchDownButton.height + lockButtonInstance.height + pitchUpButton.height
        width: panelButtonSize / 4
        size: keyboardFlickable.visibleArea.heightRatio
        position: keyboardFlickable.visibleArea.yPosition
        background: Rectangle {
            color: "black"
            border.width: 1
            border.color: "slategray"
        }
    }
}
