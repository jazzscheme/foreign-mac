#! /bin/sh

cd ../../foreign/jazz-png-mac

GSTREAMER=/Library/Frameworks/GStreamer.framework/Versions/1.0


if [ -d include ]; then
  rm -r include
fi

if [ -d lib ]; then
  rm -r lib
fi


cp -r $GSTREAMER/include/libpng16 include

mkdir lib
lipo -extract x86_64 $GSTREAMER/lib/libpng16.16.dylib -output lib/libpng16.16.dylib
chmod 755 lib/libpng16.16.dylib
