
QT       += core gui

TARGET = USB2CANBootloader
TEMPLATE = app

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

win32:LIBS += -L$$PWD/lib/win32/ -lUSB2XXX
win32:LIBS += -L$$PWD/lib/win32/ -lControlCAN
//DEFINES += LANGUE_EN

RESOURCES += \
    ../source/image.qrc
RC_FILE = \
    ../source/ico.rc

FORMS += \
    ../source/mainwindow_ch.ui \
    ../source/scandevrangedialog.ui

OTHER_FILES += \
    ../source/ico.rc

HEADERS += \
    ../source/mainwindow.h \
    ../source/usb_device.h \
    ../source/usb2can.h \
    ../source/scandevrangedialog.h \
    ../source/ControlCAN.h

SOURCES += \
    ../source/main.cpp \
    ../source/mainwindow.cpp \
    ../source/scandevrangedialog.cpp
