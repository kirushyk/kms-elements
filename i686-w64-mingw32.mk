AR=i686-w64-mingw32-ar
CC=i686-w64-mingw32-gcc
CXX=i686-w64-mingw32-g++
RANLIB=i686-w64-mingw32-ranlib
TARGET_DIR=./build/

CXXFLAGS=--std=gnu++17 -fpermissive

CFLAGS= \
-DKURENTO_MODULES_DIR="\"./modules/\"" \
-DPACKAGE="\"kms-elements\"" \
-DVERSION="\"6.4.1.6\"" \
-Duint="unsigned" \
-DWIN32_LEAN_AND_MEAN=1 \
-I/usr/i686-w64-mingw32/sys-root/mingw/include/gstreamer-1.0 \
-I/usr/i686-w64-mingw32/sys-root/mingw/lib/gstreamer-1.0/include \
-I/usr/i686-w64-mingw32/sys-root/mingw/include/glib-2.0 \
-I/usr/i686-w64-mingw32/sys-root/mingw/lib/glib-2.0/include \
-I/usr/i686-w64-mingw32/sys-root/mingw/include/glibmm-2.4 \
-I/usr/i686-w64-mingw32/sys-root/mingw/lib/glibmm-2.4/include \
-I/usr/i686-w64-mingw32/sys-root/mingw/include/sigc++-2.0 \
-I/usr/i686-w64-mingw32/sys-root/mingw/lib/sigc++-2.0/include \
-I../kms-core/win32/server/interface/generated-cpp/ \
-I../kms-core/src/server/interface/ \
-I../kms-core/src/server/implementation/ \
-I../kms-core/src/server/implementation/objects/ \
-I../kms-core/src/gst-plugins/ \
-I../kms-core/win32/server/implementation/generated-cpp/ \
-I./win32/server/implementation/generated-cpp/ \
-I./win32/server/interface/generated-cpp/  \
-I./src/server/implementation/ \
-I./src/server/interface/ \
-I./src/gst-plugins/ \
-I./src/gst-plugins/commons/ \
-I../jsoncpp/include/ \
-I../kms-jsonrpc/src/ \
-I./src/server/implementation/objects/ \
-I./win32

KMSHTTPEP_TARGET=libkmshttpep.a
KMSHTTPEP_SRC=

KMSELEMENTSINTERFACE_TARGET=libkmselementsinterface.a

KMSELEMENTSINTERFACE_SRC= \
./win32/server/interface/generated-cpp/RtpEndpointInternal.cpp \
./win32/server/interface/generated-cpp/DispatcherInternal.cpp \
./win32/server/interface/generated-cpp/MixerInternal.cpp \
./win32/server/interface/generated-cpp/PlayerEndpointInternal.cpp \
./win32/server/interface/generated-cpp/HttpPostEndpointInternal.cpp \
./win32/server/interface/generated-cpp/HttpEndpointInternal.cpp \
./win32/server/interface/generated-cpp/CompositeInternal.cpp \
./win32/server/interface/generated-cpp/RecorderEndpointInternal.cpp \
./win32/server/interface/generated-cpp/DispatcherOneToManyInternal.cpp \
./win32/server/interface/generated-cpp/WebRtcEndpointInternal.cpp \
./win32/server/interface/generated-cpp/AlphaBlendingInternal.cpp \
./win32/server/interface/generated-cpp/RtpEndpoint.cpp \
./win32/server/interface/generated-cpp/Dispatcher.cpp \
./win32/server/interface/generated-cpp/Mixer.cpp \
./win32/server/interface/generated-cpp/PlayerEndpoint.cpp \
./win32/server/interface/generated-cpp/HttpPostEndpoint.cpp \
./win32/server/interface/generated-cpp/HttpEndpoint.cpp \
./win32/server/interface/generated-cpp/Composite.cpp \
./win32/server/interface/generated-cpp/RecorderEndpoint.cpp \
./win32/server/interface/generated-cpp/DispatcherOneToMany.cpp \
./win32/server/interface/generated-cpp/WebRtcEndpoint.cpp \
./win32/server/interface/generated-cpp/AlphaBlending.cpp \
./win32/server/interface/generated-cpp/OnKeySoftLimit.cpp \
./win32/server/interface/generated-cpp/Recording.cpp \
./win32/server/interface/generated-cpp/Paused.cpp \
./win32/server/interface/generated-cpp/Stopped.cpp \
./win32/server/interface/generated-cpp/OnIceCandidate.cpp \
./win32/server/interface/generated-cpp/OnIceGatheringDone.cpp \
./win32/server/interface/generated-cpp/OnIceComponentStateChanged.cpp \
./win32/server/interface/generated-cpp/OnDataChannelOpened.cpp \
./win32/server/interface/generated-cpp/OnDataChannelClosed.cpp \
./win32/server/interface/generated-cpp/NewCandidatePairSelected.cpp \
./win32/server/interface/generated-cpp/EndOfStream.cpp \
./win32/server/interface/generated-cpp/MediaProfileSpecType.cpp \
./win32/server/interface/generated-cpp/CryptoSuite.cpp \
./win32/server/interface/generated-cpp/SDES.cpp \
./win32/server/interface/generated-cpp/VideoInfo.cpp \
./win32/server/interface/generated-cpp/IceCandidate.cpp \
./win32/server/interface/generated-cpp/IceComponentState.cpp \
./win32/server/interface/generated-cpp/IceCandidatePair.cpp

KMSELEMENTSIMPL_TARGET=libkmselementsimpl.dll

KMSELEMENTSIMPL_SRC= \
./src/server/implementation/objects/RtpEndpointImpl.cpp \
./src/server/implementation/objects/DispatcherImpl.cpp \
./src/server/implementation/objects/MixerImpl.cpp \
./src/server/implementation/objects/PlayerEndpointImpl.cpp \
./src/server/implementation/objects/HttpPostEndpointImpl.cpp \
./src/server/implementation/objects/HttpEndpointImpl.cpp \
./src/server/implementation/objects/CompositeImpl.cpp \
./src/server/implementation/objects/RecorderEndpointImpl.cpp \
./src/server/implementation/objects/DispatcherOneToManyImpl.cpp \
./src/server/implementation/objects/WebRtcEndpointImpl.cpp \
./src/server/implementation/objects/AlphaBlendingImpl.cpp \
./win32/server/implementation/generated-cpp/SerializerExpanderElements.cpp \
./win32/server/implementation/generated-cpp/RtpEndpointImplInternal.cpp \
./win32/server/implementation/generated-cpp/DispatcherImplInternal.cpp \
./win32/server/implementation/generated-cpp/MixerImplInternal.cpp \
./win32/server/implementation/generated-cpp/PlayerEndpointImplInternal.cpp \
./win32/server/implementation/generated-cpp/HttpPostEndpointImplInternal.cpp \
./win32/server/implementation/generated-cpp/HttpEndpointImplInternal.cpp \
./win32/server/implementation/generated-cpp/CompositeImplInternal.cpp \
./win32/server/implementation/generated-cpp/RecorderEndpointImplInternal.cpp \
./win32/server/implementation/generated-cpp/DispatcherOneToManyImplInternal.cpp \
./win32/server/implementation/generated-cpp/WebRtcEndpointImplInternal.cpp \
./win32/server/implementation/generated-cpp/AlphaBlendingImplInternal.cpp

KMSELEMENTSIMPL_LIBS= \
-L../kms-jsonrpc/build/ \
-L../jsoncpp/build/ \
-L../kms-core/build/ \
-L./build/ \
-lsigc-2.0 \
-lglibmm-2.4 \
-lgobject-2.0 \
-lglib-2.0 \
-lgstreamer-1.0 \
-lkmselementsinterface \
-lkmscoreimpl.dll \
-lkmsjsoncpp.dll \
-lkmsjsonrpc.dll

KMSELEMENTSMODULE_TARGET=libkmselementsmodule.dll

KMSELEMENTSMODULE_SRC= \

KMSELEMENTSMODULE_LIBS= \

KMSELEMENTSINTERFACE_OBJS=$(KMSELEMENTSINTERFACE_SRC:.cpp=.o)
KMSELEMENTSIMPL_OBJS=$(KMSELEMENTSIMPL_SRC:.cpp=.o)
KMSELEMENTSMODULE_OBJS=$(KMSELEMENTSMODULE_SRC:.cpp=.o)

all: \
$(TARGET_DIR)/$(KMSELEMENTSINTERFACE_TARGET) \
$(TARGET_DIR)/$(KMSELEMENTSIMPL_TARGET) \

# $(TARGET_DIR)/$(KMSELEMENTSMODULE_TARGET) \

# $(TARGET_DIR)/$(KMSHTTPEP_TARGET) \

$(TARGET_DIR)/$(KMSHTTPEP_TARGET): $(KMSHTTPEP_SRC)
	mkdir -p $(TARGET_DIR)
	$(CC) -c $(CFLAGS) -o $(TARGET_DIR)/$(KMSHTTPEP_TARGET).o $(KMSHTTPEP_SRC)
	$(AR) cr $(TARGET_DIR)/$(KMSHTTPEP_TARGET) $(TARGET_DIR)/$(KMSHTTPEP_TARGET).o
	$(RANLIB) $(TARGET_DIR)/$(KMSHTTPEP_TARGET)

$(TARGET_DIR)/$(KMSELEMENTSINTERFACE_TARGET): $(KMSELEMENTSINTERFACE_OBJS)
	mkdir -p $(TARGET_DIR)
	$(AR) cr $(TARGET_DIR)/$(KMSELEMENTSINTERFACE_TARGET) $(KMSELEMENTSINTERFACE_OBJS)
	$(RANLIB) $(TARGET_DIR)/$(KMSELEMENTSINTERFACE_TARGET)

$(TARGET_DIR)/$(KMSELEMENTSIMPL_TARGET): $(KMSELEMENTSIMPL_OBJS)
	mkdir -p $(TARGET_DIR)
	$(CXX) -shared -o $(TARGET_DIR)/$(KMSELEMENTSIMPL_TARGET) $(CFLAGS) $(KMSELEMENTSIMPL_OBJS) $(KMSELEMENTSIMPL_LIBS) -Wl,--out-implib,$(TARGET_DIR)/$(KMSELEMENTSIMPL_TARGET).a

$(TARGET_DIR)/$(KMSELEMENTSMODULE_TARGET): $(KMSELEENTSMODULE_OBJS)
	mkdir -p $(TARGET_DIR)
	$(CXX) -shared -o $(TARGET_DIR)/$(KMSELEMENTSMODULE_TARGET) $(CFLAGS) $(KMSELEMENTSMODULE_OBJS) $(KMSELEMENTSMODULE_LIBS) -Wl,--out-implib,$(TARGET_DIR)/$(KMSELEMENTSMODULE_TARGET).a

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<

%.o: %.cpp
	$(CXX) -c $(CFLAGS) $(CXXFLAGS) -o $@ $<

.PHONY: clean
clean:
	rm -f $(TARGET_DIR)/$(KMSELEMENTS_TARGET)
	rm -f $(KMSELEMENTSINTERFACE_OBJS)
	rm -f $(TARGET_DIR)/$(KMSELEMENTSINTERFACE_TARGET)
	rm -f $(KMSELEMENTSIMPL_OBJS)
	rm -f $(TARGET_DIR)/$(KMSELEMENTSIMPL_TARGET)
	rm -f $(TARGET_DIR)/$(KMSELEMENTSIMPL_TARGET).a
	rm -f $(KMSELEMENTSMODULE_OBJS)
	rm -f $(TARGET_DIR)/$(KMSELEMENTSMODULE_TARGET)
	rm -f $(TARGET_DIR)/$(KMSELEMENTSMODULE_TARGET).a
