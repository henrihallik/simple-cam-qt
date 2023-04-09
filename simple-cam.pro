TEMPLATE = app
TARGET = simple-cam
CONFIG += c++17
CONFIG -= app_bundle
CONFIG -= qt

# Add your source files here
SOURCES += simple-cam.cpp \
           event_loop.cpp

# Add your header files here
HEADERS += event_loop.h

# Point your PKG_CONFIG_PATH environment variable to the
# libcamera install path libcamera.pc file ($prefix/lib/pkgconfig/libcamera.pc)
LIBS += -lstdc++
LIBS += -lcamera
LIBS += -levent_pthreads
LIBS += -lcamera-base

# Define the include directories for the external libraries
INCLUDEPATH += /usr/local/include/libcamera
INCLUDEPATH += /usr/include/event2

# Define the library directories for the external libraries
LIBS += -L/usr/lib/x86_64-linux-gnu
LIBS += -levent
