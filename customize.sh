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

#3.poweroff
git clone https://github.com/sky2016cn/luci-app-poweroff.git openwrt/package/luci-app-poweroff

#4.OpenClash
git clone --depth=1 https://github.com/vernesong/OpenClash.git openwrt/package/OpenClash

#5.OpenAppFilter
git clone https://github.com/destan19/OpenAppFilter.git openwrt/package/OpenAppFilter

#6. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf
