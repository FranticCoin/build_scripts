cd aarch*
export CROSS_COMPILE=$(pwd)/bin/aarch64-linux-android-
export ARCH=arm64 && export SUBARCH=arm64

cd ../fluid*
make clean
make mrproper
make fluid_defconfig
make -j$(nproc --all)
