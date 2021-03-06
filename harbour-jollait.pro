# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = harbour-jollait
# Thanks, kimmoli! For future reference: https://github.com/kimmoli/test5-app/blob/master/test5.pro
TEMPLATE = aux

qml.files = qml/*

qml.path = /usr/share/harbour-jollait/qml

desktop.files = harbour-jollait.desktop
desktop.path = /usr/share/applications

appicons.path = /usr/share/icons/hicolor/
appicons.files = appicons/*

OTHER_FILES += \
    qml/* \
    qml/pages/* \
    qml/pages/storage.js \
    qml/pages/BookmarkPage.qml \
    qml/pages/devicePixelRatioHack.js \
    rpm/harbour-jollait.spec \
    translations/*.ts \
    translations/harbour-jollait.ts \
    translations/harbour-jollait-it.ts \
    harbour-jollait.desktop \
    harbour-jollait.png

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

TRANSLATIONS += translations/harbour-jollait-it.ts

INSTALLS += appicons qml desktop

DISTFILES += \
    qml/cover/CoverPage.qml
