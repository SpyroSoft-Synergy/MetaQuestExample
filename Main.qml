import QtQuick
import QtQuick3D
import QtQuick3D.Helpers
import QtQuick3D.Xr

import MetaQuestExample

XrView {
    id: root
    enablePassthrough: root.passthroughSupported // If passthrough is supported, then let's enable it.

    environment: SceneEnvironment {
        // If passthrough is not supported, let's set white background color.
        clearColor: "white"
        backgroundMode: root.passthroughSupported ? SceneEnvironment.Transparent : SceneEnvironment.Color
    }

    XrActor {
        id: actor
        position: Qt.vector3d(50, 2, 50)
    }

    DirectionalLight { }

    Node {
        x: 10
        y: 20
        Image {
            source: "resources/spyrosoft.png"
            width: 200
            fillMode: Image.PreserveAspectFit
        }
    }

    Connections {
        target: root.rightHandInput
        function onThumbstickValuesChanged() {
            // Move forward/backward/right/left implementation
            actor.position.x += root.rightHandInput.thumbstickValues.x
            actor.position.z -= root.rightHandInput.thumbstickValues.y
        }
    }
}


