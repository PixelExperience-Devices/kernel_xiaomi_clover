# Run this on root repo dir, not scripts/
# Get branch
echo "Enter clo branch/tag: "
echo ""
read clobranch
echo ""

# Update tree/subtree (qcacld-3.0, qca-wifi-host-cmn, fw-api, audio-kernel)
git subtree pull --prefix=drivers/staging/qcacld-3.0 https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0 $clobranch
git subtree pull --prefix=drivers/staging/qca-wifi-host-cmn https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn $clobranch
git subtree pull --prefix=drivers/staging/fw-api https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/fw-api $clobranch
git subtree pull --prefix=techpack/audio https://git.codelinaro.org/clo/la/platform/vendor/opensource/audio-kernel $clobranch