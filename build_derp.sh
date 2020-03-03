rm -rf out/target/product/land

. build/envsetup.sh
lunch derp_land-userdebug
mka kronic
