#! /bin/sh

cd ../../foreign/jazz-fontconfig-mac


install_name_tool -id @rpath/libfontconfig.1.dylib lib/libfontconfig.1.dylib
install_name_tool -change /Users/cartier/Devel/local/lib/libfreetype.6.dylib @rpath/libfreetype.6.dylib lib/libfontconfig.1.dylib
install_name_tool -change /Users/cartier/Devel/local/lib/libpng16.16.dylib @rpath/libpng16.16.dylib lib/libfontconfig.1.dylib
