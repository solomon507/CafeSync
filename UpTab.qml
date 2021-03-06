import QtQuick 2.3
import QtQuick.Window 2.2
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3
//import Ubuntu.Components 1.2

import "main.js" as Scripts


Item {
    id:popup
    property string number: "0"
    property string list:""

    //clip: true

    onStateChanged: Scripts.loadActions(list)
    states: [
        State {
            name:"Active"
            PropertyChanges {
                target: popup
                x:0
            }

        },
        State {
          name:"InActive"
          PropertyChanges {
              target: popup
              x:0 - width
          }
        }
    ]

    Image {
        anchors.fill:parent
        source:"img/tabUp.png"

        Image {
            anchors.fill:parent
            source: "img/go-up.svg"
            fillMode: Image.PreserveAspectFit
        }

    }
    MouseArea {
        anchors.fill:parent
        onClicked: console.log("back");
    }

}





