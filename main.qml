import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5
import QtQuick.Window 2.15
//import Style 1.0
import "Components"
import "qrc:/LayoutManager.js" as Responsive

Window {
    width: 1500
    height: 1000
    visible: true
    title: qsTr("IVI-Component")

    RowLayout {
        id: mapLayout
        visible: true //false //Style.mapAreaVisible
        spacing: 0
        anchors.fill: parent
        Rectangle{
            id: sideView
            Layout.preferredWidth: 500
            Layout.fillHeight: true
            color: "#000000"

            Image {
                id:topNavigation
                anchors{
                    top: parent.top
                    topMargin: 100
                    horizontalCenter: parent.horizontalCenter
                }
                source: "qrc:/IVI/IVI-Top-Line.png"
                width: 500
                height: 100

                //speed display
                ColumnLayout {
                    id: speedDisplayBar
                    anchors{
                        bottom: topNavigation.bottom
                        bottomMargin: 60
                        horizontalCenter: topNavigation.horizontalCenter
                    }

                    Label {
                        text: "78"//leftGauge.value.toFixed(0)
                        font.pixelSize: 65
                        //font.family: "Sans"
                        color: "#FFFFFF"
                        font.bold: Font.DemiBold
                        Layout.alignment: Qt.AlignHCenter
                    }

                    Label {
                        text: "MPH"
                        font.pixelSize: 18
                        //font.family: "Sans"
                        color: "#FFFFFF"
                        opacity: 0.4
                        font.bold: Font.Normal
                        Layout.alignment: Qt.AlignHCenter
                    }

                }
            }

            Image{
                id:vehicleCenterline
                anchors{
                    bottom: sideView.bottom
                    bottomMargin: 80
                    horizontalCenter: sideView.horizontalCenter
                }
                source: "qrc:/IVI/IVI-Vehicle-Center-Line.png"
                sourceSize: Qt.size(500,500)
            }

            Image {
                anchors{
                    horizontalCenter: sideView.horizontalCenter
                    bottom: sideView.bottom
                    bottomMargin:220
                }
                sourceSize: Qt.size(190,190)
                source: "qrc:/IVI/Vehicle Img.png"
            }
        }

        NavigationMapHelperScreen {
            Layout.fillWidth: true
            Layout.fillHeight: true
            runMenuAnimation: true
        }
    }

    Footer{
        id: footerLayout
        onOpenLauncher: launcher.open()
        anchors {
            bottom: parent.bottom
        }
    }

}
