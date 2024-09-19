#! /bin/sh

cd ../../foreign/jazz-stream-mac

GSTREAMERDISTR=/Users/cartier/Devel/gstreamer/gstreamer-x86/distr


cp $GSTREAMERDISTR/include/gstreamer-1.0/gst/gsttask.h gstreamer/include/gstreamer-1.0/gst
cp $GSTREAMERDISTR/include/gstreamer-1.0/gst/app/gstappsrc.h gstreamer/include/gstreamer-1.0/gst/app


cpdistr() {
    cp $GSTREAMERDISTR/lib/$1 gstreamer/lib/$2
}

relocate() {
    echo relocating $1...
    jazz -run relocate change-name gstreamer lib/$1 $GSTREAMERDISTR @rpath/gstreamer
    jazz -run relocate change-dependencies gstreamer lib/$1 @rpath @rpath/gstreamer/lib
    jazz -run relocate change-dependencies gstreamer lib/$1 $GSTREAMERDISTR @rpath/gstreamer
    jazz -run relocate change-dependencies gstreamer lib/$1 /Library/Frameworks/GStreamer.framework/Versions/1.0 @rpath/gstreamer
    jazz -run relocate add-rpath gstreamer lib/$1 @loader_path/..
}

patch() {
  cpdistr $1 $1
  relocate $1
}

patch libgstreamer-1.0.0.dylib
patch libgstbase-1.0.0.dylib
patch libgstapp-1.0.0.dylib
patch libgstaudio-1.0.0.dylib
# patch liborc-0.4.0.dylib
patch gstreamer-1.0/libgstcoreelements.dylib
patch gstreamer-1.0/libgstcoretracers.dylib
