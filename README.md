# AutoBuild-lede
云编译 Lede-OpenWrt


1. 编译某个插件，在“xxx.config”文件添加
   
   例如：CONFIG_PACKAGE_luci-app-dockerman=y

2. 取消编译某个插件，在“xxx.config”文件添加
   
   例如：# CONFIG_PACKAGE_luci-app-dockerman is not set

3. 若要使用 Lean 的“luci-theme-argon”皮肤，在“xxx.config”文件添加
   
   CONFIG_PACKAGE_luci-theme-argon=y

   编译为默认皮肤：在“customize_x86.sh”和“customize.sh”恢复注释掉的“修改默认皮肤”

5. 若要使用“jerrykuku/luci-theme-argon/”皮肤，在“xxx.config”文件添加

   CONFIG_PACKAGE_luci-theme-argon=y
   
   然后在所有的“Build_xxx.yml”脚本中恢复注释掉的“luci-theme-argon”代码

   编译为默认皮肤：在“customize_x86.sh”和“customize.sh”恢复注释掉的“修改默认皮肤”

6. 编译完成后，请检查编译过程是否出错。
  
   尤其注意“Initialization environment”安装依赖包部分，展开来细看是否出错

   下方“Build_xxx.yml”脚本中的八大部分参考：https://github.com/dzlea/ActionsBuildOpenWRT/tree/main/.github/workflows   
-----------------------------------------------------------------------

jobs:
  build:
    runs-on: ubuntu-22.04  //注意ubuntu版本号

   - name: Before freeing up disk space

   - name: "Optimize Disk Space"
     uses: "hugoalh/disk-space-optimizer-ghaction@v0.8.1"   //注意“@v0.8.1”版本号

   - name: Freeing up disk space
     
   - name: Free up disk space complete
     
   - name: Checkout
     uses: actions/checkout@master  //原文末尾是“@main”，可自己定义

   - name: Initialization environment
     
   - name: Check Space
-----------------------------------------------------------------------

   余下部分参考：https://github.com/esirplayground/AutoBuild-OpenWrt

   在此感谢两位原作者的付出！
