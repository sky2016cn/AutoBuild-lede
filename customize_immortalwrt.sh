#!/bin/bash
#=================================================
# Copyright (c) 2019-2023 sky2016cn
# Author: sky2016cn
# licensed under the MIT License
# See /LICENSE for more information
# Description: Build OpenWrt using GitHub Actions
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' immortalwrt/package/base-files/files/bin/config_generate

#2. 修改默认皮肤
#sed -i 's/+luci-theme-bootstrap/+luci-theme-argon/g' immortalwrt/feeds/luci/collections/luci/Makefile

#3. Replace with JerryKuKu’s Argon
#rm immortalwrt/package/lean/luci-theme-argon -rf
