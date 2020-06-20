#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
#取消默认的主题
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git kenzok8 https://github.com/kenzok8/openwrt-packages' feeds.conf.default

# add luci -app-
git clone https://github.com/destan19/OpenAppFilter.git package/ysy/OpenAppFilter
git clone https://github.com/li-xunhuan/OpenClash.git package/ysy/openclash
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk package/ysy/MentoHUST-OpenWrt
git clone https://github.com/BoringCat/luci-app-mentohust.git package/ysy/luci-app-mentohust
#git clone https://github.com/ElonH/Rclone-OpenWrt.git package/ysy/Rclone-OpenWrt
#git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic package/ysy/luci-app-unblockneteasemusic
#git clone https://github.com/tty228/luci-app-serverchan.git package/ysy/luci-app-serverchan
#git clone https://github.com/project-openwrt/FileBrowser.git package/ysy/FileBrowser
#git clone https://github.com/project-openwrt/luci-app-koolproxyR.git package/ysy/luci-app-koolproxyR
#git clone git clone https://github.com/maxlicheng/luci-app-unblockmusic.git package/ysy/luci-app-unblockmusic
