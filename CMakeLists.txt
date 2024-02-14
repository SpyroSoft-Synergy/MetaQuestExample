cmake_minimum_required(VERSION 3.16)

project(MetaQuestExample VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.7 REQUIRED COMPONENTS Core Quick Quick3D Quick3DXr)

qt_standard_project_setup()

qt6_policy(SET QTP0002 NEW)

qt_add_executable(appMetaQuestExample
    MANUAL_FINALIZATION
    main.cpp
    android/AndroidManifest.xml
)

qt_add_qml_module(appMetaQuestExample
    URI MetaQuestExample
    VERSION 1.0
    QML_FILES
        Main.qml
    RESOURCES
        resources/spyrosoft.png
    RESOURCE_PREFIX "/qt/qml"
    IMPORTS
        QtQuick3D
        QtQuick3D.Xr
)

qt6_xr_setup(appMetaQuestExample) # openxr_loader library manual setup is replaced with qt6_xr_setup

target_link_libraries(appMetaQuestExample PUBLIC Qt6::Core Qt6::Quick Qt6::Quick3D Qt6::Quick3DXr)

if(ANDROID)
    set_property(TARGET appMetaQuestExample APPEND PROPERTY QT_ANDROID_PACKAGE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/android)
endif()

qt_finalize_executable(appMetaQuestExample)

include(GNUInstallDirs)
install(TARGETS appMetaQuestExample
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
