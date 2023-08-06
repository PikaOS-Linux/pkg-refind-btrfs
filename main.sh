# Clone Upstream
git clone https://github.com/trbs/pid -b 3.0.4
cp -rvf ./debian ./pid/
cd ./pid

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
