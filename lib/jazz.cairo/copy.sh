#! /bin/sh

cd ../../foreign/jazz-cairo-mac

GSTREAMER=/Library/Frameworks/GStreamer.framework/Versions/1.0


if [ -d include ]; then
  rm -r include
fi

if [ -d lib ]; then
  rm -r lib
fi


mkdir include
cp -r $GSTREAMER/include/cairo include

mkdir lib
lipo -extract x86_64 $GSTREAMER/lib/libcairo.2.dylib -output lib/libcairo.2.dylib
chmod 755 lib/libcairo.2.dylib
