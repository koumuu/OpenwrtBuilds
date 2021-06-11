# add all-in-one feed
sed -i '$a src-git aiodepends https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
sed -i '$a src-git aiofeed https://github.com/kenzok8/openwrt-packages' feeds.conf.default

