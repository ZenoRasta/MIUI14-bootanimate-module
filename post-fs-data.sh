#!/system/bin/sh
# MIUI14 开机动画 v2 - post-fs-data 兜底脚本
# 主路径已由 Magisk magic mount 自动覆盖，此处对个别 ROM 可能的
# 备用读取路径执行 bind mount，所有 bind 均来自模块内同一份文件。

MODDIR=${0%/*}
SRC="$MODDIR/system/product/media/bootanimation.zip"

[ -f "$SRC" ] || exit 0

for TARGET in \
    /system/product/media/bootanimation.zip \
    /system_ext/media/bootanimation.zip \
    /product/media/bootanimation.zip; do
    if [ -f "$TARGET" ]; then
        mount --bind "$SRC" "$TARGET" 2>/dev/null
    fi
done
