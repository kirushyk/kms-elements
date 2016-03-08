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

KMSELEMENTSIMPL_TARGET=libkmselementsimpl.dll

KMSELEMENTSIMPL_SRC= \

KMSELEMENTSIMPL_LIBS= \

KMSELEMENTSMODULE_TARGET=libkmselementsmodule.dll

KMSELEMENTSMODULE_SRC= \

KMSELEMENTSMODULE_LIBS= \

KMSELEMENTSINTERFACE_OBJS=$(KMSELEMENTSINTERFACE_SRC:.cpp=.o)
KMSELEMENTSIMPL_OBJS=$(KMSELEMENTSIMPL_SRC:.cpp=.o)
KMSELEMENTSMODULE_OBJS=$(KMSELEMENTSMODULE_SRC:.cpp=.o)

all: \
$(TARGET_DIR)/$(KMSHTTPEP_TARGET) \
$(TARGET_DIR)/$(KMSELEMENTSINTERFACE_TARGET) \
$(TARGET_DIR)/$(KMSELEMENTSIMPL_TARGET) \
$(TARGET_DIR)/$(KMSELEMENTSMODULE_TARGET) \

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
