﻿import QtQuick 2.12
import QtQuick.Window 2.12
import QtLocation 5.12
import QtPositioning 5.11

Window {
    id: win
    objectName: "window"
    visible: true
    width: 512
    height: 512

    Map {
        id: map
        anchors.fill: parent
        minimumZoomLevel: 3
        maximumZoomLevel: 17
        zoomLevel: 10
        activeMapType: map.supportedMapTypes[1]
        center: QtPositioning.coordinate(40.39, 99.79)
        opacity: 0.999

        plugin: Plugin {
            name: 'mud';
            PluginParameter {
                name: "mud.mapping.offline.directory"
                value: 'C:/Users/li.zhao/Downloads/googlemaps'
            }
        }
        Component.onCompleted: console.log(map.supportedMapTypes)
    }
}
