#! /bin/sh

cd ../../foreign/jazz-cairo-mac


install_name_tool -id @rpath/libcairo.2.dylib lib/libcairo.2.dylib
install_name_tool -change /Users/cartier/Devel/local/lib/libpixman-1.0.dylib @rpath/libpixman-1.0.dylib lib/libcairo.2.dylib
install_name_tool -change /Users/cartier/Devel/local/lib/libfontconfig.1.dylib @rpath/libfontconfig.1.dylib lib/libcairo.2.dylib
install_name_tool -change /Users/cartier/Devel/local/lib/libfreetype.6.dylib @rpath/libfreetype.6.dylib lib/libcairo.2.dylib
install_name_tool -change /Users/cartier/Devel/local/lib/libpng16.16.dylib @rpath/libpng16.16.dylib lib/libcairo.2.dylib
