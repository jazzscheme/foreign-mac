#! /bin/sh

cd ../../foreign/jazz-stream-mac

mv ../librnnoise.0.dylib gstreamer/lib
mv ../libgstrnnoise.dylib gstreamer/lib/gstreamer-1.0

mv ../libwebrtc.dylib gstreamer/lib
mv ../libgstwebrtcaudioprocessing.dylib gstreamer/lib/gstreamer-1.0
