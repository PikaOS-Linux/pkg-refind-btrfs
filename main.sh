# Clone Upstream
#git clone https://github.com/Venom1991/refind-btrfs -b v0.6.0
cp -rvf ./refind-btrfs.install ./debian/
cp -rvf ./debian ./refind-btrfs/
cd ./refind-btrfs

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
