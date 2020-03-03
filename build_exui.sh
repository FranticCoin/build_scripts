. build/envsetup.sh
export CUSTOM_BUILD_TYPE=OFFICIAL
lunch aosp_land-userdebug
mka bacon -j8
