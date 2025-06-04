import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.15

Item {
    height: 80
    width: parent.width
    signal openLauncher()
    LinearGradient {
        anchors.fill: parent
        start: Qt.point(0, 0)
        end: Qt.point(0, 1000)
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#000000"}
            GradientStop { position: 1.0; color: "#E0E0E0" }
        }
    }

    Icon{
        id: leftControl
        icon.source: "qrc:/icons/app_icons/model-3.svg"
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 36
        onClicked: openLauncher()

        ColorAnimation {
            from: "#F0F0FF"
            to: "#FFFFFF"
            duration: 200
        }
    }

    Item {
        height: parent.height
        anchors.left: leftControl.right
        anchors.right: middleLayout.left
        anchors.verticalCenter: parent.verticalCenter

        StepperControl {
            anchors.centerIn: parent
            value: 72
        }
    }

    RowLayout {
        id: middleLayout
        anchors.centerIn: parent
        spacing: 20

        Image{
            source: "qrc:/IVI/IVI-Seat-Heat-Left.png"
            sourceSize: Qt.size(50,50)
        }

        Icon{
            icon.source: "qrc:/icons/app_icons/phone.svg"
        }

        Icon{
            icon.source: "qrc:/icons/app_icons/radio.svg"
        }

        Icon{
            icon.source: "qrc:/icons/app_icons/bluetooth.svg"
        }

        Icon{
            icon.source: "qrc:/icons/app_icons/spotify.svg"
        }

        Icon{
            icon.source: "qrc:/icons/app_icons/dashcam.svg"
        }

        Icon{
            icon.source: "qrc:/icons/app_icons/video.svg"
        }

        Image{
            source: "qrc:/IVI/IVI-Seat-Heat-Right.png"
            sourceSize: Qt.size(50,50)
        }
    }

    Item {
        height: parent.height
        anchors.right: rightControl.left
        anchors.left: middleLayout.right
        anchors.verticalCenter: parent.verticalCenter

        StepperControl {
            anchors.centerIn: parent
            value: 72
        }
    }

    StepperControl {
        id: rightControl
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 36
        value: 72
        icon: "qrc:/icons/app_icons/volume.svg"
    }
}
