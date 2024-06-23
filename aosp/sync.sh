#!/bin/bash

echo
echo "--------------------------------------"
echo "    derpfest14 14.0 Buildbot          "
echo "                  by                  "
echo "            noobcoder9             "
echo "--------------------------------------"
echo
rm -rf device/oneplus/ossi
git clone https://github.com/rosand25/android_device_oneplus_ossi.git -b lineage-21 device/oneplus/ossi
rm -rf device/oneplus/sm6375-common
git clone https://github.com/rosand25/android_device_oneplus_sm6375-common.git -b lineage-21 device/oneplus/sm6375-common
rm -rf kernel/oneplus/sm6375
git clone https://github.com/rosand25/android_kernel_oneplus_sm6375.git -b lineage-21 kernel/oneplus/sm6375
rm -rf vendor/oneplus/ossi
git clone https://github.com/rosand25/vendor_oneplus_ossi.git -b lineage-21 vendor/oneplus/oscar
rm -rf vendor/oneplus/sm6375-common
git clone https://github.com/rosand25/vendor_oneplus_sm6375-common.git -b fourteen vendor/oneplus/sm6375-common
rm -rf hardware/oplus
git clone https://github.com/PixelOS-Devices/hardware_oplus.git -b fourteen-holi hardware/oplus
rm -rf prebuilts/clang/host/linux-x86/clang-r450784d
git clone https://gitlab.com/ImSurajxD/clang-r450784d.git prebuilts/clang/host/linux-x86/clang-r450784d
# rm -rf vendor/oplus/lib
# git clone https://github.com/phhgsi/oplus_lib.git vendor/oplus/lib
# rm -rf vendor/oplus/camera
# git clone https://gitlab.com/ajay24ce008/proprietary_vendor_oplus_camera.git -b lineage-21-op12 vendor/oplus/camera
# rm -rf prebuilts/derp
# git clone https://github.com/derpfestoscar/prebuilts_derp.git prebuilts/derp
# rm -rf hardware/google/pixel/kernel_headers
# Run build script 
chmod u+x scripts/build.sh
./scripts/build.sh
