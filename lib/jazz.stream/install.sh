#! /bin/sh

APPDIR=../../../..
. "$APPDIR/.jaz"

JAZZ=$APPDIR/$JAZDEST/jazz

# use hack around install_name_tool too many open files
$JAZZ -run relocate directorynameonly gstreamer @rpath @rpath/lib
