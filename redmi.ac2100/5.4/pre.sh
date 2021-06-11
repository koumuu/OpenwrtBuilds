# add helloworld
sed -i '/src-git helloworld/d' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default

# Add Passwall
#sed -i '/src-git passwall/d' feeds.conf.default
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default

# Remove telephony
# sed -i 's/src-git telephony/#\0/' feeds.conf.default

# Use open-sourced version of MT drivers
sed -i 's/kmod-mt7603e kmod-mt7615d luci-app-mtwifi uboot-envtools/kmod-mt7603 kmod-mt7615e kmod-mt7615-firmware uboot-envtools/' ./target/linux/ramips/image/mt7621.mk
