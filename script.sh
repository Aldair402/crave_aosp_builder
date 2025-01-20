crave run --no-patch -- "rm -rf .repo/local_manifests; \
repo init -u https://github.com/Evolution-X/manifest -b vic --git-lfs; \
git clone https://github.com/Aldair69/amogus_doha_manifests --depth 1 -b evox .repo/local_manifests; \ 
/opt/crave/resync.sh; \
export BUILD_USERNAME=AldairSoraki ; \
export BUILD_HOSTNAME=kurisu ; \
export ALLOW_MISSING_DEPENDENCIES=true ; \
export SELINUX_IGNORE_NEVERALLOWS=true ; \
rm -rf vendor/qcom/opensource/fwk-detect ; \
rm -rf hardware/qcom-caf/sm* hardware/qcom-caf/sdm* hardware/qcom-caf/msm* ; \
. device/motorola/targets/scripts/replace_camera_sepolicy.sh ; \
sed -i '141,142d' vendor/evolution/config/common.mk  ; \
source build/envsetup.sh && \
lunch evolution_amogus_doha-ap4a && \
make installclean && \
mka bacon
