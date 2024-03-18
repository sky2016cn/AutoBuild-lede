#!/bin/bash
#=================================================
# Copyright (c) 2019-2023 sky2016cn
# Author: sky2016cn
# licensed under the MIT License
# See /LICENSE for more information
# Description: Build OpenWrt using GitHub Actions
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. 修改默认皮肤
sed -i 's/+luci-theme-bootstrap/+luci-theme-argon-mod/g' openwrt/feeds/luci/collections/luci/Makefile

#4. 修改WiFi名称为Hello,密码password
sed -i 's/set wireless.default_radio${devidx}.ssid=OpenWrt/set wireless.default_radio${devidx}.ssid=Hello/g; s/set wireless.default_radio${devidx}.encryption=none/set wireless.default_radio${devidx}.encryption=psk-mixed/g' openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh 
sed -i '/set wireless.default_radio${devidx}.encryption=psk-mixed/a \                                                set wireless.default_radio${devidx}.key=password' openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh

#5. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf
