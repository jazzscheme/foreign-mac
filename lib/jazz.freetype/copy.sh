#! /bin/sh

cd ../../foreign/jazz-freetype-mac

GSTREAMER=/Library/Frameworks/GStreamer.framework/Versions/1.0


if [ -d include ]; then
  rm -r include
fi

if [ -d lib ]; then
  rm -r lib
fi


cp -r $GSTREAMER/include/freetype2 include

mkdir lib
lipo -extract x86_64 $GSTREAMER/lib/libfreetype.6.dylib -output lib/libfreetype.6.dylib
chmod 755 lib/libfreetype.6.dylib
