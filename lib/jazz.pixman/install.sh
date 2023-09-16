#! /bin/sh

cd ../../foreign/jazz-pixman-mac


install_name_tool -id @rpath/libpixman-1.0.dylib lib/libpixman-1.0.dylib
