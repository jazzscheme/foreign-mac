if [ ! -d foreign ]; then
  mkdir foreign
fi

cd foreign

for i in jazz-cairo-mac jazz-fontconfig-mac jazz-freetype-mac jazz-git-mac jazz-opengl-mac jazz-pixman-mac jazz-platform-mac jazz-png-mac jazz-stream-mac
do
  jas clone togethersphere.com/$i
done
