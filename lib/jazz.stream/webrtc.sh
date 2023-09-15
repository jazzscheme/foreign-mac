#! /bin/sh

APPDIR=../../../..
. "$APPDIR/.jaz"

JAZZ=$APPDIR/$JAZDEST/jazz

WEBRTC=/Users/cartier/Devel/gstreamer/webrtc/build
WEBRTCAUDIOPROCESSING=/Users/cartier/Devel/gstreamer/webrtcaudioprocessing/build/plugin

cp $WEBRTC/libwebrtc.dylib gstreamer/lib
cp $WEBRTCAUDIOPROCESSING/libgstwebrtcaudioprocessing.dylib gstreamer/lib/gstreamer-1.0/libgstwebrtcaudioprocessing.dylib

install_name_tool -change @rpath/libwebrtc.dylib @rpath/gstreamer/lib/libwebrtc.dylib gstreamer/lib/gstreamer-1.0/libgstwebrtcaudioprocessing.dylib

$JAZZ -run relocate file gstreamer/lib libwebrtc.dylib /Library/Frameworks/GStreamer.framework/Versions/1.0 @rpath/gstreamer
$JAZZ -run relocate file gstreamer/lib/gstreamer-1.0 libgstwebrtcaudioprocessing.dylib /Library/Frameworks/GStreamer.framework/Versions/1.0 @rpath/gstreamer
