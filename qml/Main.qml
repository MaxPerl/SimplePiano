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

        Rectangle {
        id: pianoId
        anchors.fill: parent

            WhiteKey {
                pitch: "C_"
            }
            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: keyWide - (height / 2)
                x: blackKeyWide
                pitch: "Cis_"
            }

            WhiteKey {
                y: keyWide
                pitch: "D_"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 2) - (height / 2 ))
                x: blackKeyWide
                pitch: "Dis_"
            }

            WhiteKey {
                y: keyWide * 2
                pitch: "E_"
            }

            WhiteKey {
                y: keyWide * 3
                pitch: "F_"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 4) - (height / 2 ))
                x: blackKeyWide
                pitch: "Fis_"
            }

            WhiteKey {
                y: keyWide * 4
                pitch: "G_"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 5) - (height / 2 ))
                x: blackKeyWide
                pitch: "Gis_"
            }

            WhiteKey {
                y: keyWide * 5
                pitch: "A_"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 6) - (height / 2 ))
                x: blackKeyWide
                pitch: "Ais_"
            }

            WhiteKey {
                y: keyWide * 6
                pitch: "H_"
            }

            WhiteKey {
                y: keyWide * 7
                pitch: "C"
            }


            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 8) - (height / 2 ))
                x: blackKeyWide
                pitch: "Cis"
            }

            WhiteKey {
                y: keyWide * 8
                pitch: "D"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 9) - (height / 2 ))
                x: blackKeyWide
                pitch: "Dis"
            }

            WhiteKey {
                y: keyWide * 9
                pitch: "E"
            }

            WhiteKey {
                y: keyWide * 10
                pitch: "F"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 11) - (height / 2 ))
                x: blackKeyWide
                pitch: "Fis"
            }

            WhiteKey {
                y: keyWide * 11
                pitch: "G"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 12) - (height / 2 ))
                x: blackKeyWide
                pitch: "Gis"
            }

            WhiteKey {
                y: keyWide * 12
                pitch: "A"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 13) - (height / 2 ))
                x: blackKeyWide
                pitch: "Ais"
            }

            WhiteKey {
                y: keyWide * 13
                pitch: "H"
            }

            WhiteKey {
                y: keyWide * 14
                pitch: "c"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 15) - (height / 2 ))
                x: blackKeyWide
                pitch: "cis"
            }

            WhiteKey {
                y: keyWide * 15
                pitch: "d"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 16) - (height / 2 ))
                x: blackKeyWide
                pitch: "dis"
            }

            WhiteKey {
                y: keyWide * 16
                pitch: "e"
            }

            WhiteKey {
                y: keyWide * 17
                pitch: "f"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 18) - (height / 2 ))
                x: blackKeyWide
                pitch: "fis"
            }

            WhiteKey {
                y: keyWide * 18
                pitch: "g"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 19) - (height / 2 ))
                x: blackKeyWide
                pitch: "gis"
            }

            WhiteKey {
                y: keyWide * 19
                pitch: "a"
            }

            BlackKey {
                // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
                y: ((keyWide * 20) - (height / 2 ))
                x: blackKeyWide
                pitch: "ais"
            }

            WhiteKey {
                y: keyWide * 20
                pitch: "h"
            }

            WhiteKey {
                y: keyWide * 21
                pitch: "c-"
            }

        } //Rectangle pianoID

    } //Flickable
}
