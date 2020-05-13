#~/bin/bash
VERSION=$1
which genisoimage || echo "Install genisoimage first!"
rm -f "Minigolf-MacOS-Standalone-${VERSION}.img"
mkdir -p /tmp/disk
rm -rf /tmp/disk/*
cp -r Minigolf.app/ /tmp/disk/Minigolf.app
genisoimage -o Minigolf-MacOS-Standalone-$VERSION.img -D -r -l -ldots -V "Minigolf Client ${VERSION}" /tmp/disk
