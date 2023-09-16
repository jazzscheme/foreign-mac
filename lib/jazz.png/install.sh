#! /bin/sh

cd ../../foreign/jazz-png-mac


install_name_tool -id @rpath/libpng16.16.dylib lib/libpng16.16.dylib
