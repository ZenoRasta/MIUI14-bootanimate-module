# MIUI14-bootanimate-module

[English](#english) · [中文](#中文)

---

## 中文

将 **HyperOS 3** 开机动画替换为经典 **MIUI 14** 样式的 Magisk / KernelSU 模块。

### 特性

- **无侵入挂载**：通过 Magisk / KernelSU Magic Mount 覆盖 `bootanimation.zip`，不修改 `/system` 分区实体文件
- **MIUI 14 经典动画**：1080×2340 分辨率、30 fps，两段式动画（`part0` 彩色 + `part1` 纯色过渡）
- **多路径兼容**：主路径 `/system/product/media/bootanimation.zip`；`post-fs-data.sh` 对以下备用路径自动 bind mount 兜底：
  - `/system/product/media/bootanimation.zip`
  - `/system_ext/media/bootanimation.zip`
  - `/product/media/bootanimation.zip`
- **广泛适配**：理论上适配所有 HyperOS 3 机型；系统会自动等比例缩放动画至屏幕尺寸。其他将开机动画放在同路径、同文件名的 ROM 也可自行测试
- **安装信息清晰**：`customize.sh` 在安装时输出设备型号、系统版本与挂载说明

### 系统要求

| 项目 | 要求 |
|------|------|
| Root 方案 | Magisk **v20.4+** 或 KernelSU（兼容 Magisk 模块格式） |
| 目标系统 | HyperOS 3（及其他使用相同 `bootanimation.zip` 路径的 ROM） |
| 生效方式 | 安装后重启 |

### 安装

1. 从 [Releases](https://github.com/ZenoRasta/MIUI14-bootanimate-module/releases) 下载 `MIUI14-bootanimate-module-v2.0.zip`
2. 在 Magisk / KernelSU 管理器中：**模块 → 从本地安装**，选择该 ZIP
3. 安装完成后**重启设备**

### 卸载

在 Magisk / KernelSU 中禁用或卸载本模块，然后重启即可恢复系统原开机动画。

### 模块结构

```
.
├── META-INF/com/google/android/   # Magisk 安装脚本
├── module.prop                    # 模块元数据
├── customize.sh                   # 安装时 UI 提示
├── post-fs-data.sh                # 备用路径 bind mount
└── system/product/media/
    └── bootanimation.zip          # MIUI 14 开机动画资源
```

### 开源协议

本项目采用 [GNU General Public License v2.0](LICENSE)。

---

## English

A Magisk / KernelSU module that replaces the **HyperOS 3** boot animation with the classic **MIUI 14** style.

### Features

- **Systemless overlay**: Uses Magisk / KernelSU Magic Mount to override `bootanimation.zip` without modifying the physical `/system` partition
- **Classic MIUI 14 animation**: 1080×2340 resolution at 30 fps, two-part sequence (`part0` color + `part1` solid transition)
- **Multi-path fallback**: Primary path `/system/product/media/bootanimation.zip`; `post-fs-data.sh` bind-mounts the same asset to alternate paths when present:
  - `/system/product/media/bootanimation.zip`
  - `/system_ext/media/bootanimation.zip`
  - `/product/media/bootanimation.zip`
- **Broad compatibility**: Intended for all HyperOS 3 devices; the system scales the animation proportionally to the display. Other ROMs using the same path and filename may work—please test on your device
- **Clear install feedback**: `customize.sh` prints device model, build info, and mount details during installation

### Requirements

| Item | Requirement |
|------|-------------|
| Root | Magisk **v20.4+** or KernelSU (Magisk module format) |
| Target OS | HyperOS 3 (and ROMs with the same `bootanimation.zip` location) |
| Activation | Reboot after install |

### Installation

1. Download `MIUI14-bootanimate-module-v2.0.zip` from [Releases](https://github.com/ZenoRasta/MIUI14-bootanimate-module/releases)
2. In Magisk / KernelSU Manager: **Modules → Install from storage**, select the ZIP
3. **Reboot** your device

### Uninstallation

Disable or remove the module in Magisk / KernelSU, then reboot to restore the stock boot animation.

### Module layout

```
.
├── META-INF/com/google/android/   # Magisk installer scripts
├── module.prop                    # Module metadata
├── customize.sh                   # Install-time UI messages
├── post-fs-data.sh                # Alternate-path bind mounts
└── system/product/media/
    └── bootanimation.zip          # MIUI 14 boot animation asset
```

### License

This project is licensed under the [GNU General Public License v2.0](LICENSE).
