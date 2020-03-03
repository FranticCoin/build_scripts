rm -rf out/target/product/land

repo sync -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

. build/envsetup.sh
export CUSTOM_BUILD_TYPE=OFFICIAL
lunch aosp_land-userdebug
mka bacon -j8
