/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.12
import Qt5Compat.GraphicalEffects



Rectangle {
    id: main
    width: 1200
    height: 800

    FontLoader {
        id: nunito
        source: "./fonts/Nunito.ttf"
    }

    FontLoader {
        id: allerta
        source: "./fonts/Allerta.otf"
    }

    
    
    
    Rectangle {
        id: convert_button
        x: 99
        y: 620
        width: 198
        height: 50
        color: "#e46a6a"
        radius: 25
        
        Text {
            id: convert_button_text
            x: 58
            y: 15
            color: "#ffffff"
            text: qsTr("Convert")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Allerta"
        }
    }
    Item{
        Text{
            id: message_to_hide_label
            x: 52
            y: 460
            width: 200
            height: 20
            color: "#da5b5b"
            text: "Message to hide :"
            font.pixelSize: 16
            font.underline: true
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            transformOrigin: Item.Left
            font.family: 'Nunito'
        }
        Rectangle {
            id: message_to_hide_area
            x: 52
            y: 480
            width: 301
            height: 50
            color: "#f2e4e4"
            radius: 25
            smooth: true
            TextInput {
                id: message_to_hide_input
                x: 8
                y: 0
                width: 285
                height: 50
                color: "#da5b5b"
                font.pixelSize: 12
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                selectionColor: "#da5b5b"
                font.family: "Nunito"
            }
        }
        InnerShadow {
            anchors.fill: message_to_hide_area
            horizontalOffset: 0
            verticalOffset: 5
            radius: 8
            source: message_to_hide_area
            color: "#2f737171"
            spread: 0
            samples: 17
        } 
    }
    
    
    Item{
        Text{
            id: hidden_message_label
            x: 769
            y: 460
            width: 200
            height: 20
            color: "#da5b5b"
            text: "Hidden message :"
            font.pixelSize: 16
            font.underline: true
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            transformOrigin: Item.Left
            font.family: 'Nunito'
        }
        Rectangle {
            id: hidden_message_area
            x: 769
            y: 480
            width: 301
            height: 50
            color: "#f2e4e4"
            radius: 25
            smooth: true
            TextEdit {
                id: hidden_message_input
                x: 8
                y: 0
                width: 285
                height: 50
                color: "#da5b5b"
                font.pixelSize: 12
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                selectionColor: "#da5b5b"
                font.family: 'Nunito'
            }
        }
        InnerShadow {
            anchors.fill: hidden_message_area
            horizontalOffset: 0
            verticalOffset: 5
            radius: 8
            source: hidden_message_area
            color: "#2f737171"
            spread: 0
            samples: 17
        } 
    }

    Item {
        Text{
            id: key_to_see_label
            x: 811
            y: 539
            width: 200
            height: 20
            color: "#da5b5b"
            text: "Key to see :"
            font.pixelSize: 16
            font.underline: true
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            transformOrigin: Item.Left
            font.family: 'Nunito'
        }
        Rectangle {
            id: key_to_see_area
            x: 811
            y: 559
            width: 219
            height: 35
            color: "#f2e4e4"
            radius: 21.5
            border.color: "#f2e4e4"
            TextInput {
                id: key_to_see_input
                x: 8
                y: 8
                width: 203
                height: 20
                color: "#da5b5b"
                font.pixelSize: 12
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                echoMode: TextInput.Password
                transformOrigin: Item.Left
                font.family: 'Nunito'
            }
        }
        InnerShadow {
            anchors.fill: key_to_see_area
            horizontalOffset: 0
            verticalOffset: 5
            radius: 8
            source: key_to_see_area
            color: "#2f737171"
            spread: 0
            samples: 17
        } 
    }
    
    Item{
        Text{
            id: image_to_watermark_label
            x: 50
            y: 112
            width: 200
            height: 20
            color: "#da5b5b"
            text: "Image to watermark :"
            font.pixelSize: 16
            font.underline: true
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            transformOrigin: Item.Left
            font.family: 'Nunito'
        }
        Rectangle {
            id: image_to_watermark_area
            x: 50
            y: 132
            width: 306
            height: 313
            color: "#ffffff"
            border.color: "#da5b5b"
            
            BorderImage {
                id: image_to_watermark
                x: 0
                y: 0
                width: 306
                height: 313
                border.left: 0
            }
        }
        DropShadow {
            anchors.fill: image_to_watermark_area
            horizontalOffset: 0
            verticalOffset: 5
            radius: 8
            source: image_to_watermark_area
            color: "#7f353434"
            spread: 0
            samples: 17
            visible: false
        }
    }
    
    Item{
        Text{
            id: watermarked_image_label
            x: 767
            y: 112
            width: 200
            height: 20
            color: "#da5b5b"
            text: "Watermarked image :"
            font.pixelSize: 16
            font.underline: true
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            transformOrigin: Item.Left
            font.family: 'Nunito'
        }
        Rectangle {
            id: watermarked_image_area
            x: 767
            y: 132
            width: 306
            height: 313
            color: "#ffffff"
            border.color: "#da5b5b"
            BorderImage {
                id: watermarked_image
                x: 0
                y: 0
                width: 306
                height: 313
                border.left: 0
            }
        }
        DropShadow {
            anchors.fill: watermarked_image_area
            horizontalOffset: 0
            verticalOffset: 5
            radius: 8
            source: watermarked_image_area
            color: "#7f353434"
            spread: 0
            samples: 17
            visible: false
        }
    }

    Item {
        Text {
            id: title_app
            x: 17
            y: 17
            width: 373
            height: 75
            color: "#ed3636"
            text: qsTr("WATERMARKED IMAGE APP")
            wrapMode: Text.Wrap
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.family: 'Allerta'
            font.pixelSize: 40
        }
        DropShadow {
            anchors.fill: title_app
            horizontalOffset: 0
            verticalOffset: 5
            radius: 8
            source: title_app
            color: "#7f353434"
            spread: 0
            samples: 17
        }

    }
    
    Item{
        Text {
            id: key_to_hide_label
            x: 89
            y: 539
            width: 200
            height: 20
            color: "#da5b5b"
            text: "Key to hide :"
            font.pixelSize: 16
            font.underline: true
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            transformOrigin: Item.Left
            font.family: 'Nunito'
            }
        Rectangle {
            id: key_to_hide_area
            x: 89
            y: 559
            width: 219
            height: 35
            color: "#f2e4e4"
            radius: 21.5
            border.color: "#f2e4e4"
            TextInput {
                id: key_to_hide_input
                x: 8
                y: 8
                width: 203
                height: 20
                color: "#da5b5b"
                font.pixelSize: 12
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                transformOrigin: Item.Left
                echoMode: TextInput.Password
                font.family: 'Nunito'
            }
        }
        InnerShadow {
            anchors.fill: key_to_hide_area
            horizontalOffset: 0
            verticalOffset: 5
            radius: 8
            source: key_to_hide_area
            color: "#2f737171"
            spread: 0
            samples: 17
        }
    }
    
    
    Rectangle {
        id: extract_button
        x: 821
        y: 620
        width: 198
        height: 50
        color: "#e46a6a"
        radius: 25
        border.color: "#e46a6a"
        border.width: 0
        Text {
            id: extract_button_text
            x: 62
            y: 15
            color: "#ffffff"
            text: qsTr("Extract")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Allerta"
        }
    }
    
}
