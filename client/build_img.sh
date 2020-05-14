#~/bin/bash
which genisoimage || echo "Install genisoimage first!"
rm -f minigolf_setup.img
mkdir -p /tmp/disk
rm -rf /tmp/disk/*
cp -r Client.app/ /tmp/disk/Client.app
genisoimage -o minigolf_setup.img  -r -l -ldots -V "Installer" /tmp/disk
