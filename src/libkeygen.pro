#-------------------------------------------------
#
# Project created by QtCreator 2013-12-30T01:06:04
#
#-------------------------------------------------

QT       -= gui

TARGET = Keygen
TEMPLATE = lib
CONFIG += staticlib
INCLUDEPATH += ../libs/OpenSSL-iOS/include

SOURCES += \
    WirelessMatcher.cpp \
    algorithms/AliceGermanyKeygen.cpp \
    algorithms/AliceItalyKeygen.cpp \
    algorithms/AndaredKeygen.cpp \
    algorithms/AxtelKeygen.cpp \
    algorithms/CabovisaoSagemKeygen.cpp \
    algorithms/ComtrendKeygen.cpp \
    algorithms/ConnKeygen.cpp \
    algorithms/DiscusKeygen.cpp \
    algorithms/DlinkKeygen.cpp \
    algorithms/EasyBoxKeygen.cpp \
    algorithms/EircomKeygen.cpp \
    algorithms/HuaweiKeygen.cpp \
    algorithms/InfostradaKeygen.cpp \
    algorithms/InterCableKeygen.cpp \
    algorithms/Keygen.cpp \
    algorithms/MaxcomKeygen.cpp \
    algorithms/MegaredKeygen.cpp \
    algorithms/OnoKeygen.cpp \
    algorithms/OteBAUDKeygen.cpp \
    algorithms/OteHuaweiKeygen.cpp \
    algorithms/OteKeygen.cpp \
    algorithms/PBSKeygen.cpp \
    algorithms/PirelliKeygen.cpp \
    algorithms/PtvKeygen.cpp \
    algorithms/SkyV1Keygen.cpp \
    algorithms/Speedport500Keygen.cpp \
    algorithms/TecomKeygen.cpp \
    algorithms/TeletuKeygen.cpp \
    algorithms/TelseyKeygen.cpp \
    algorithms/ThomsonKeygen.cpp \
    algorithms/VerizonKeygen.cpp \
    algorithms/WifimediaRKeygen.cpp \
    algorithms/Wlan2Keygen.cpp \
    algorithms/Wlan6Keygen.cpp \
    algorithms/ZyxelKeygen.cpp \
    config/AliceConfigParser.cpp \
    config/AliceMagicInfo.cpp \
    config/OTEHuaweiConfigParser.cpp \
    config/TeleTuConfigParser.cpp \
    config/TeleTuMagicInfo.cpp

HEADERS += \
    WirelessMatcher.h \
    algorithms/AliceGermanyKeygen.h \
    algorithms/AliceItalyKeygen.h \
    algorithms/AndaredKeygen.h \
    algorithms/AxtelKeygen.h \
    algorithms/CabovisaoSagemKeygen.h \
    algorithms/ComtrendKeygen.h \
    algorithms/ConnKeygen.h \
    algorithms/DiscusKeygen.h \
    algorithms/DlinkKeygen.h \
    algorithms/EasyBoxKeygen.h \
    algorithms/EircomKeygen.h \
    algorithms/HuaweiKeygen.h \
    algorithms/InfostradaKeygen.h \
    algorithms/InterCableKeygen.h \
    algorithms/Keygen.h \
    algorithms/MaxcomKeygen.h \
    algorithms/MegaredKeygen.h \
    algorithms/OnoKeygen.h \
    algorithms/OteBAUDKeygen.h \
    algorithms/OteHuaweiKeygen.h \
    algorithms/OteKeygen.h \
    algorithms/PBSKeygen.h \
    algorithms/PirelliKeygen.h \
    algorithms/PtvKeygen.h \
    algorithms/SkyV1Keygen.h \
    algorithms/Speedport500Keygen.h \
    algorithms/TecomKeygen.h \
    algorithms/TeleTuKeygen.h \
    algorithms/TelseyKeygen.h \
    algorithms/ThomsonKeygen.h \
    algorithms/unknown.h \
    algorithms/VerizonKeygen.h \
    algorithms/WifimediaRKeygen.h \
    algorithms/Wlan2Keygen.h \
    algorithms/Wlan6Keygen.h \
    algorithms/ZyxelKeygen.h \
    config/AliceConfigParser.h \
    config/AliceMagicInfo.h \
    config/OTEHuaweiConfigParser.h \
    config/TeleTuConfigParser.h \
    config/TeleTuMagicInfo.h
unix {
    target.path = /usr/lib
    INSTALLS += target
}
