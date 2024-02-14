# A simple Qt application for Meta Quest

An example Qt application for Meta Quest VR devices based on QtQuick3DXr.

The application supports:
- Passthrough, if available on your device,
- Camera movement forward/backward/right/left.

## Getting started

### 1. Developer Account Registration

Full instruction can be found [here](https://developer.oculus.com/resources/publish-account-management-intro/).

### 2. Oculus application

[Download]() the Oculus application.

### 3. Meta Quest Developer Hub

[Download](https://developer.oculus.com/downloads/package/oculus-developer-hub-win/) the Developer Hub and log in with your developer account.

Connect the Meta Quest device and enable debugging via USB cable.

### 4. Install SDKs

Install:
- Oculus Mobile SDK
- Oculus OpenXR Mobile SDK.

Set `OCULUS_OPENXR_MOBILE_SDK` environment variable to point to the oculus-openxr-mobile-sdk directory.

### 5. Install OpenXR-SDK

Install the [OpenXR-SDK](https://github.com/KhronosGroup/OpenXR-SDK-Source).

Build it and install it locally. It should be possible to find the libraries while building the QtQuick3DXr.

### 6. Install QtQuick3DXr

Clone the [QtQuick3DXr repository](https://git.qt.io/annichol/qtquick3dxr) and switch to 6.7 branch.

Install it into your local Qt 6.7 installation directory.

### 7. Run the MetaQuestExample application

Build the MetaQuestExample application for Android arm64-v8a and install it into your Meta Quest device. Have fun!