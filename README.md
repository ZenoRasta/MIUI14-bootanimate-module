# MIUI14-bootanimate-module

[English](#english) · [中文](#中文)

---

## 中文

将澎湃3开机动画替换为经典**MIUI 14**样式的Magisk/KernelSU模块

### 特性

- **无侵入挂载**：通过Magisk/KernelSU Magic Mount覆盖`bootanimation.zip`，不修改`/system`分区实体文件
- **MIUI 14样式动画**：1080×2340 分辨率、30 fps，提取自REDMI K30 Pro Zoom Edition
- **多路径兼容**：主路径 `/system/product/media/bootanimation.zip`；`post-fs-data.sh` 对以下备用路径自动 bind mount 兜底：
  - `/system/product/media/bootanimation.zip`
  - `/system_ext/media/bootanimation.zip`
  - `/product/media/bootanimation.zip`

### 系统要求

| 项目 | 要求 |
|------|------|
| Root实现 | Magisk **v20.4+** 或 KernelSU（兼容 Magisk 模块格式） |
| 目标系统 | HyperOS 3（及其他使用相同 `bootanimation.zip` 路径的 ROM） |

### 安装

1. 从 [Releases](https://github.com/ZenoRasta/MIUI14-bootanimate-module/releases) 下载最新Release（不是下载源码zip！不然活该装不上）
2. 在Magisk/Ksu管理器中模块-从本地安装，选择从release下载的zip
3. 安装完成后重启设备

### 卸载

在Magisk/KernelSU中禁用或卸载本模块，重启就恢复系统原装开机动画

### 开放源代码许可

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

### Installation

1. Download `MIUI14-bootanimate-module-v2.0.zip` from [Releases](https://github.com/ZenoRasta/MIUI14-bootanimate-module/releases)
2. In Magisk / KernelSU Manager: **Modules → Install from storage**, select the ZIP
3. **Reboot** your device

### Uninstallation

Disable or remove the module in Magisk / KernelSU, then reboot to restore the stock boot animation.

### License

This project is licensed under the [GNU General Public License v2.0](LICENSE).
