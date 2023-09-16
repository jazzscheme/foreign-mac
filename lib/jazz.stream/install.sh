#! /bin/sh

cd ../../foreign/jazz-stream-mac


# use hack around install_name_tool too many open files
jazz -run relocate directorynameonly gstreamer @rpath @rpath/lib
