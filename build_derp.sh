rm -rf out/target/product/land

rm -rf vendor/gapps/config.mk
rm -rf vendor/pixelstyle/config.mk
rm -rf vendor/aosip/config/packages.mk

repo sync -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

rm -rf vendor/gapps/config.mk && wget -P vendor/gapps/ https://raw.githubusercontent.com/FranticCoin/android_vendor_gapps/master/config.mk
rm -rf vendor/pixelstyle/config.mk && wget -P vendor/pixelstyle/ https://raw.githubusercontent.com/FranticCoin/platform_vendor_pixelstyle/master/config.mk
rm -rf vendor/aosip/config/packages.mk && wget -P vendor/aosip/config/ https://raw.githubusercontent.com/FranticCoin/platform_vendor_aosip/master/config/packages.mk

. build/envsetup.sh
lunch derp_land-userdebug
mka kronic
