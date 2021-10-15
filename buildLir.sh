#!/bin/bash
#set -e

rund="$(pwd)"
para="$(nproc)"

if [ ! "$1" ]; then
	echo "set build directory"
	exit
fi

pushd "$1"

repo init -u https://github.com/LineageOS/android.git -b lineage-18.1
git clone --single-branch https://github.com/eremitein/treble_manifest_lir -b v313+ .repo/local_manifests
repo sync -j${para} -c -q --force-sync --no-tags --no-clone-bundle --optimized-fetch --prune ||exit
bash ${rund}/apply-patches.sh ${rund} ||echo "*!* NOT ALL PATCHES APPLIED, CHECK THEM MANUALLY" && exit
cd device/phh/treble
bash generate.sh lineage
cd -
. build/envsetup.sh
lunch treble_arm64_bvN-userdebug
make -j${para} systemimage

popd