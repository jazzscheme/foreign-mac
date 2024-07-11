#! /bin/sh

cd ../../foreign/jazz-stream-mac

WEBRTC=/Users/cartier/Devel/gstreamer/webrtc-x86/build
WEBRTCAUDIOPROCESSING=/Users/cartier/Devel/gstreamer/webrtcaudioprocessing-x86/build/plugin


cp $WEBRTC/libwebrtc.dylib gstreamer/lib
cp $WEBRTCAUDIOPROCESSING/libgstwebrtcaudioprocessing.dylib gstreamer/lib/gstreamer-1.0/libgstwebrtcaudioprocessing.dylib

install_name_tool -change @rpath/libwebrtc.dylib @rpath/gstreamer/lib/libwebrtc.dylib gstreamer/lib/gstreamer-1.0/libgstwebrtcaudioprocessing.dylib

jazz -run relocate file gstreamer/lib libwebrtc.dylib /Library/Frameworks/GStreamer.framework/Versions/1.0 @rpath/gstreamer
jazz -run relocate file gstreamer/lib/gstreamer-1.0 libgstwebrtcaudioprocessing.dylib /Library/Frameworks/GStreamer.framework/Versions/1.0 @rpath/gstreamer
