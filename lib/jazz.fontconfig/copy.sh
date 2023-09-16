#! /bin/sh

cd ../../foreign/jazz-fontconfig-mac

GSTREAMER=/Library/Frameworks/GStreamer.framework/Versions/1.0


if [ -d include ]; then
  rm -r include
fi

if [ -d lib ]; then
  rm -r lib
fi


mkdir include
cp -r /Users/cartier/Devel/local/include/fontconfig include/fontconfig

mkdir lib
lipo -extract x86_64 $GSTREAMER/lib/libfontconfig.1.dylib -output lib/libfontconfig.1.dylib
chmod 755 lib/libfontconfig.1.dylib
