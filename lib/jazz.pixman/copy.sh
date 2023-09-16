#! /bin/sh

cd ../../foreign/jazz-pixman-mac

GSTREAMER=/Library/Frameworks/GStreamer.framework/Versions/1.0


if [ -d include ]; then
  rm -r include
fi

if [ -d lib ]; then
  rm -r lib
fi


mkdir include
cp -r $GSTREAMER/include/pixman-1 include/pixman-1

mkdir lib
lipo -extract x86_64 $GSTREAMER/lib/libpixman-1.0.dylib -output lib/libpixman-1.0.dylib
chmod 755 lib/libpixman-1.0.dylib
