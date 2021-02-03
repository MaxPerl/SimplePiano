import QtQuick 2.9
import QtQuick.Window 2.2
import Ubuntu.Components 1.3
//import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0

MainView {
    id: rootID
    objectName: 'mainView'
    applicationName: 'simplepiano.perlmax'
    automaticOrientation: false
    visible: true
    width: units.gu(45)
    height: units.gu(75)
    //title: qsTr("Simple Piano")

    property int keyWide: height / 8
    property double blackKeyWide: width * 1/4

    WhiteKey {

    }
    BlackKey {
        // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
        y: keyWide - (height / 2)
        x: blackKeyWide
        pitch: "Cis"
    }

    WhiteKey {
        y: keyWide
        pitch: "D"
    }

    BlackKey {
        // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
        y: ((keyWide * 2) - (height / 2 ))
        x: blackKeyWide
        pitch: "Dis"
    }

    WhiteKey {
        y: keyWide * 2
        pitch: "E"
    }

    WhiteKey {
        y: keyWide * 3
        pitch: "F"
    }

    BlackKey {
        // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
        y: ((keyWide * 4) - (height / 2 ))
        x: blackKeyWide
        pitch: "Fis"
    }

    WhiteKey {
        y: keyWide * 4
        pitch: "G"
    }

    BlackKey {
        // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
        y: ((keyWide * 5) - (height / 2 ))
        x: blackKeyWide
        pitch: "Gis"
    }

    WhiteKey {
        y: keyWide * 5
        pitch: "A"
    }

    BlackKey {
        // Beginn der nächsten weißen Taste abzüglich Hälfte der Weite der schwarzen Taste
        y: ((keyWide * 6) - (height / 2 ))
        x: blackKeyWide
        pitch: "Ais"
    }

    WhiteKey {
        y: keyWide * 6
        pitch: "H"
    }

    WhiteKey {
        y: keyWide * 7
        pitch: "c"
    }

}
