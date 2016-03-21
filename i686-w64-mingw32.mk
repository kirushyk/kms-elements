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
-I./win32/server/implementation/HttpServer/ \
-I/usr/i686-w64-mingw32/sys-root/mingw/include/nice \
-I/usr/i686-w64-mingw32/sys-root/mingw/include/libsoup-2.4 \
-I/usr/i686-w64-mingw32/sys-root/mingw/include/gstreamer-1.0 \
-I/usr/i686-w64-mingw32/sys-root/mingw/lib/gstreamer-1.0/include \
-I/usr/i686-w64-mingw32/sys-root/mingw/include/glib-2.0 \
-I/usr/i686-w64-mingw32/sys-root/mingw/lib/glib-2.0/include \
-I/usr/i686-w64-mingw32/sys-root/mingw/include/glibmm-2.4 \
-I/usr/i686-w64-mingw32/sys-root/mingw/lib/glibmm-2.4/include \
-I/usr/i686-w64-mingw32/sys-root/mingw/include/sigc++-2.0 \
-I/usr/i686-w64-mingw32/sys-root/mingw/lib/sigc++-2.0/include \
-I../kurento-media-server/win32/webrtcendpoint/ \
-I../kms-core/win32/server/interface/generated-cpp/ \
-I../kms-core/src/server/interface/ \
-I../kms-core/src/server/implementation/ \
-I../kms-core/src/server/implementation/objects/ \
-I../kms-core/src/gst-plugins/ \
-I../kms-core/win32/server/implementation/generated-cpp/ \
-I./win32/server/implementation/generated-cpp/ \
-I./win32/gst-plugins/rtpendpoint/ \
-I./win32/server/interface/generated-cpp/  \
-I./src/gst-plugins/rtpendpoint/ \
-I./src/gst-plugins/webrtcendpoint/ \
-I./src/server/implementation/HttpServer/ \
-I./src/server/implementation/ \
-I./src/server/interface/ \
-I./src/gst-plugins/ \
-I./src/gst-plugins/commons/ \
-I../jsoncpp/include/ \
-I../kms-jsonrpc/src/ \
-I./src/server/implementation/objects/ \
-I./win32

KMSHTTPEP_TARGET=libkmshttpep.a

KMSHTTPEP_C_SRC= \
win32/server/implementation/HttpServer/http-marshal.c \
win32/server/implementation/HttpServer/http-enumtypes.c

KMSHTTPEP_CXX_SRC= \
src/server/implementation/HttpServer/KmsHttpPost.cpp \
src/server/implementation/HttpServer/KmsHttpEPServer.cpp \
src/server/implementation/HttpServer/HttpEndPointServer.cpp

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

RTPENDPOINT_TARGET=librtpendpoint.dll

RTPENDPOINT_SRC= \
./src/gst-plugins/rtpendpoint/kmsrtpconnection.c \
./src/gst-plugins/rtpendpoint/kmssrtpconnection.c \
./src/gst-plugins/rtpendpoint/kmsrtpsession.c \
./src/gst-plugins/rtpendpoint/kmssrtpsession.c \
./src/gst-plugins/rtpendpoint/kmsrtpendpoint.c \
./src/gst-plugins/rtpendpoint/kmssocketutils.c \
./src/gst-plugins/rtpendpoint/kmsrandom.c \
./win32/gst-plugins/rtpendpoint/kms-rtp-enumtypes.c \
./src/gst-plugins/rtpendpoint/kmsrtpbaseconnection.c \

RTPENDPOINT_LIBS= \
-L/usr/i686-w64-mingw32/sys-root/mingw/lib \
-L/usr/lib/gcc/i686-w64-mingw32/5.2.0 \
-L/usr/i686-w64-mingw32/lib/ \
-L../kms-core/build/ \
-L./build/ \
-lgobject-2.0 \
-lglib-2.0 \
-lgstreamer-1.0 \
-lgstsdp-1.0.dll \
-lkmssdpagent \
-lkmsgstcommons \
-lgio-2.0 \
-lnice

WEBRTCDATAPROTO_TARGET=libwebrtcdataproto.dll

WEBRTCDATAPROTO_SRC= \
./src/gst-plugins/webrtcendpoint/kmswebrtcdatasessionbin.c \
./src/gst-plugins/webrtcendpoint/kmswebrtcdatachannelbin.c \
./src/gst-plugins/webrtcendpoint/kmswebrtcdatachannel.c \
./win32/gst-plugins/webrtcendpoint/kms-webrtc-enumtypes.c \
./win32/gst-plugins/webrtcendpoint/kms-webrtc-data-marshal.c

WEBRTCDATAPROTO_LIBS= \
-L/usr/i686-w64-mingw32/sys-root/mingw/lib \
-L/usr/lib/gcc/i686-w64-mingw32/5.2.0 \
-L/usr/i686-w64-mingw32/lib/ \
-L../kms-core/build/ \
-lkmsutils \
-lkmssdpagent \
-lgstsctp-1.0 \
-lgstreamer-1.0 \
-lgstvideo-1.0 \
-lgstapp-1.0 \
-lgobject-2.0 \
-lglib-2.0 \
-lgio-2.0 \
-lrpcrt4 \
-lole32

KMSWEBRTCENDPOINTLIB_TARGET=libkmswebrtcendpointlib.dll

KMSWEBRTCENDPOINTLIB_SRC= \
./src/gst-plugins/webrtcendpoint/kmswebrtcbaseconnection.c \
./src/gst-plugins/webrtcendpoint/kmswebrtcconnection.c \
./src/gst-plugins/webrtcendpoint/kmswebrtcrtcpmuxconnection.c \
./src/gst-plugins/webrtcendpoint/kmswebrtcbundleconnection.c \
./src/gst-plugins/webrtcendpoint/kmswebrtcsctpconnection.c \
./src/gst-plugins/webrtcendpoint/kmswebrtctransportsrcnice.c \
./src/gst-plugins/webrtcendpoint/kmswebrtctransportsinknice.c \
./src/gst-plugins/webrtcendpoint/kmswebrtctransportsrc.c \
./src/gst-plugins/webrtcendpoint/kmswebrtctransportsink.c \
./src/gst-plugins/webrtcendpoint/kmswebrtctransport.c \
./src/gst-plugins/webrtcendpoint/kmswebrtcsession.c \
./src/gst-plugins/webrtcendpoint/kmswebrtcendpoint.c \
./src/gst-plugins/webrtcendpoint/kmsicecandidate.c \
./src/gst-plugins/webrtcendpoint/kmsicebaseagent.c \
./src/gst-plugins/webrtcendpoint/kmsiceniceagent.c \
./win32/gst-plugins/webrtcendpoint/kms-webrtc-marshal.c \
./win32/gst-plugins/webrtcendpoint/kms-webrtc-data-marshal.c

KMSWEBRTCENDPOINTLIB_LIBS= \
-L/usr/i686-w64-mingw32/sys-root/mingw/lib \
-L/usr/lib/gcc/i686-w64-mingw32/5.2.0 \
-L/usr/i686-w64-mingw32/lib/ \
-L../kms-core/build/ \
-L./build/ \
-lwebrtcdataproto.dll \
-lgstsdp-1.0.dll \
-lglibmm-2.4 \
-lgobject-2.0 \
-lglib-2.0 \
-lgstreamer-1.0 \
-lgstapp-1.0.dll \
-lkmssdpagent \
-lkmsgstcommons \
-lnice

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
-lkmshttpep \
-lkmswebrtcendpointlib.dll \
-lkmselementsinterface \
-lkmsgstcommons \
-lkmscoreimpl.dll \
-lkmsjsoncpp.dll \
-lkmsjsonrpc.dll \
-lsigc-2.0 \
-lglibmm-2.4 \
-lgobject-2.0 \
-lglib-2.0 \
-lgio-2.0 \
-lgstreamer-1.0 \
-lsoup-2.4.dll \
-lboost_system-mt \
-lrpcrt4 \
-lole32 \
-lnice

KMSELEMENTSMODULE_TARGET=libkmselementsmodule.dll

KMSELEMENTSMODULE_SRC= \
./win32/server/implementation/generated-cpp/Module.cpp \
./win32/server/module_version.cpp \
./win32/server/module_name.cpp \
./win32/server/module_descriptor.cpp \
./win32/server/module_generation_time.cpp

KMSELEMENTSMODULE_LIBS= \
-L../kms-core/build/ \
-L./build/ \
-lkmselementsimpl.dll \
-lkmscoreimpl.dll

KMSHTTPEP_C_OBJS=$(KMSHTTPEP_C_SRC:.c=.o)
KMSHTTPEP_CXX_OBJS=$(KMSHTTPEP_CXX_SRC:.cpp=.o)
KMSELEMENTSINTERFACE_OBJS=$(KMSELEMENTSINTERFACE_SRC:.cpp=.o)
KMSWEBRTCENDPOINTLIB_OBJS=$(KMSWEBRTCENDPOINTLIB_SRC:.c=.o)
KMSELEMENTSIMPL_OBJS=$(KMSELEMENTSIMPL_SRC:.cpp=.o)
RTPENDPOINT_OBJS=$(RTPENDPOINT_SRC:.c=.o)
WEBRTCDATAPROTO_OBJS=$(WEBRTCDATAPROTO_SRC:.c=.o)
KMSELEMENTSMODULE_OBJS=$(KMSELEMENTSMODULE_SRC:.cpp=.o)

all: \
$(TARGET_DIR)/$(KMSELEMENTSINTERFACE_TARGET) \
$(TARGET_DIR)/$(KMSHTTPEP_TARGET) \
$(TARGET_DIR)/$(RTPENDPOINT_TARGET) \
$(TARGET_DIR)/$(WEBRTCDATAPROTO_TARGET) \
$(TARGET_DIR)/$(KMSWEBRTCENDPOINTLIB_TARGET) \
$(TARGET_DIR)/$(KMSELEMENTSIMPL_TARGET) \
$(TARGET_DIR)/$(KMSELEMENTSMODULE_TARGET) \
$(TARGET_DIR)/$(KMSELEMENTSPLUGINS_TARGET)

$(TARGET_DIR)/$(KMSHTTPEP_TARGET): $(KMSHTTPEP_C_OBJS) $(KMSHTTPEP_CXX_OBJS)
	mkdir -p $(TARGET_DIR)
	$(AR) cr $@ $^
	$(RANLIB) $@

$(TARGET_DIR)/$(KMSELEMENTSINTERFACE_TARGET): $(KMSELEMENTSINTERFACE_OBJS)
	mkdir -p $(TARGET_DIR)
	$(AR) cr $@ $^
	$(RANLIB) $@

$(TARGET_DIR)/$(RTPENDPOINT_TARGET): $(RTPENDPOINT_OBJS)
	mkdir -p $(TARGET_DIR)
	$(CC) -shared -o $@ $(CFLAGS) $^ $(RTPENDPOINT_LIBS) -Wl,--out-implib,$@.a

$(TARGET_DIR)/$(WEBRTCDATAPROTO_TARGET): $(WEBRTCDATAPROTO_OBJS)
	mkdir -p $(TARGET_DIR)
	$(CC) -shared -o $@ $(CFLAGS) $^ $(WEBRTCDATAPROTO_LIBS) -Wl,--out-implib,$@.a

$(TARGET_DIR)/$(KMSWEBRTCENDPOINTLIB_TARGET): $(KMSWEBRTCENDPOINTLIB_OBJS)
	mkdir -p $(TARGET_DIR)
	$(CC) -shared -o $@ $(CFLAGS) $^ $(KMSWEBRTCENDPOINTLIB_LIBS) -Wl,--out-implib,$@.a

$(TARGET_DIR)/$(KMSELEMENTSIMPL_TARGET): $(KMSELEMENTSIMPL_OBJS)
	mkdir -p $(TARGET_DIR)
	$(CXX) -shared -o $@ $(CFLAGS) $^ $(KMSELEMENTSIMPL_LIBS) -Wl,--out-implib,$@.a

$(TARGET_DIR)/$(KMSELEMENTSMODULE_TARGET): $(KMSELEMENTSMODULE_OBJS)
	mkdir -p $(TARGET_DIR)
	$(CXX) -shared -o $@ $(CFLAGS) $^ $(KMSELEMENTSMODULE_LIBS) -Wl,--out-implib,$@.a

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<

%.o: %.cpp
	$(CXX) -c $(CFLAGS) $(CXXFLAGS) -o $@ $<

.PHONY: clean
clean:
	rm -f $(KMSHTTPEP_C_OBJS)
	rm -f $(KMSHTTPEP_CXX_OBJS)
	rm -f $(TARGET_DIR)/$(KMSHTTPEP_TARGET)
	rm -f $(RTPENDPOINT_OBJS)
	rm -f $(TARGET_DIR)/$(RTPENDPOINT_TARGET)
	rm -f $(TARGET_DIR)/$(RTPENDPOINT_TARGET).a
	rm -f $(WEBRTCDATAPROTO_OBJS)
	rm -f $(TARGET_DIR)/$(WEBRTCDATAPROTO_TARGET)
	rm -f $(TARGET_DIR)/$(WEBRTCDATAPROTO_TARGET).a
	rm -f $(KMSWEBRTCENDPOINTLIB_OBJS)
	rm -f $(TARGET_DIR)/$(KMSWEBRTCENDPOINTLIB_TARGET)
	rm -f $(TARGET_DIR)/$(KMSWEBRTCENDPOINTLIB_TARGET).a
	rm -f $(KMSELEMENTSINTERFACE_OBJS)
	rm -f $(TARGET_DIR)/$(KMSELEMENTSINTERFACE_TARGET)
	rm -f $(KMSELEMENTSIMPL_OBJS)
	rm -f $(TARGET_DIR)/$(KMSELEMENTSIMPL_TARGET)
	rm -f $(TARGET_DIR)/$(KMSELEMENTSIMPL_TARGET).a
	rm -f $(KMSELEMENTSMODULE_OBJS)
	rm -f $(TARGET_DIR)/$(KMSELEMENTSMODULE_TARGET)
	rm -f $(TARGET_DIR)/$(KMSELEMENTSMODULE_TARGET).a

