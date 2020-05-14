#~/bin/bash
rm -f minigolf_setup.dmg
dd if=/dev/zero of=minigolf_setup.dmg bs=1M count=256 status=progress
mkfs.hfsplus -v Installer minigolf_setup.dmg
mkdir -p ./tmp
sudo mount minigolf_setup.dmg ./tmp/
sudo cp -r Client.app/ ./tmp/Client.app
sudo umount ./tmp
rm -r tmp
