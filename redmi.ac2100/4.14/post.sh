# update static IP
sed -i 's/192.168.1.1/10.1.1.1/g' package/base-files/files/bin/config_generate

# upgrade golang to 1.16
sed -i -r 's/(GO_VERSION_MAJOR_MINOR):=.*/\1:=1.16/;s/(GO_VERSION_PATCH):=.*/\1:=/' feeds/packages/lang/golang/golang-version.mk
sed -i -r 's/(PKG_HASH):=.*/\1:=7688063d55656105898f323d90a79a39c378d86fe89ae192eb3b7fc46347c95a/' feeds/packages/lang/golang/golang/Makefile

# add ucl upx to tools
sed -i '/tools-$(BUILD_TOOLCHAIN)/a tools-y += ucl upx' tools/Makefile
sed -i '/# builddir dependencies/a $(curdir)/upx/compile := $(curdir)/ucl/compile' tools/Makefile
