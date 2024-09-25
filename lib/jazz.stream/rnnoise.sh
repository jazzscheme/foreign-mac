#! /bin/sh

cd ../../foreign/jazz-stream-mac

RNNOISE=/Users/live/Devel/gstreamer/rnnoise-x86


cp $RNNOISE/rnnoise/mac/lib/librnnoise.0.dylib gstreamer/lib
cp $RNNOISE/build/plugin/libgstrnnoise.dylib gstreamer/lib/gstreamer-1.0/libgstrnnoise.dylib

install_name_tool -id @rpath/librnnoise.0.dylib gstreamer/lib/librnnoise.0.dylib
install_name_tool -change /usr/local/lib/librnnoise.0.dylib @rpath/librnnoise.0.dylib gstreamer/lib/librnnoise.0.dylib
install_name_tool -change @rpath/librnnoise.0.dylib @rpath/gstreamer/lib/librnnoise.0.dylib gstreamer/lib/gstreamer-1.0/libgstrnnoise.dylib

jazz -run relocate file gstreamer/lib/gstreamer-1.0 libgstrnnoise.dylib /Library/Frameworks/GStreamer.framework/Versions/1.0 @rpath/gstreamer
