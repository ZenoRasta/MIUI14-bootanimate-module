# MIUI14 开机动画模块 v2.0
# 安装不设置SKIPUNZIP，让Magisk/KSU自动解压并对system目录执行magic mount
# 主路径: /system/product/media/bootanimation.zip

ui_print " "
ui_print "*******************************"
ui_print "  MIUI14样式开机动画模块 v2.0"
ui_print "  For HyperOS3"
ui_print "  1080x2340 @ 30fps"
ui_print "*******************************"
ui_print " "
ui_print "- 设备: $(getprop ro.product.model)"
ui_print "- 系统: $(getprop ro.build.version.incremental)"
ui_print "- Android: $(getprop ro.build.version.release)"
ui_print " "
ui_print "- 挂载方式: Magic Mount (systemless)"
ui_print "- 主路径:   /system/product/media/bootanimation.zip"
ui_print "- 理论上适配所有HyperOS3机型，设备会自动等比例缩放开机动画至合适尺寸"
ui_print "- 同时也应适配开机动画位于同路径同文件的系统，具体请自行测试"
ui_print " "
ui_print "- 安装完成，重启后生效"
ui_print " "
