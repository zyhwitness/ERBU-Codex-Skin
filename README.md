# 一二布布 Dream Skin for Codex

基于开源项目 [Fei-Away/Codex-Dream-Skin](https://github.com/Fei-Away/Codex-Dream-Skin) 二次修改的一套 Codex Desktop 主题。

在原项目提供的主题注入、运行时切换、背景图加载和脚本能力之上，继续做了「一二布布」主题定制和少量逻辑扩展。

## 主题效果展示
![erbu-desktop1.png](assets/erbu-desktop1.png)
![erbu-desktop2.png](assets/erbu-desktop2.png)

## 原项目做了什么

原项目 `Fei-Away/Codex-Dream-Skin` 主要负责：

- 为官方 Codex Desktop 提供主题注入能力
- 通过本机回环 CDP 方式应用主题
- 提供背景图主题和主题配置加载机制
- 提供 macOS 安装、切换、恢复脚本

## 这个仓库改了什么

在原项目基础上，这个仓库主要做了以下定制：

### 1. 一二布布主题素材

- 主背景图替换为 `erbu2.png`
- 角色挂件替换为布布相关素材
- `heroSticker` 使用透明底贴图 `erbu3-cutout.png`
- 品牌区图标使用圆形角标图 `corner-badge.svg`

### 2. 主题视觉统一

- 将默认的强调色改成更贴近背景灌木的绿色系
- 统一按钮、标签、边框、选中态的视觉语言
- 让背景、角色和控件颜色更协调

### 3. 针对角色主题的逻辑扩展

- 扩展并修正 `decor` 配置项的使用
- 支持 `brandIcon`、`heroSticker` 等装饰图接入
- 修正 `offsetX / offsetY` 在配置到渲染链路中的传递问题
- 增加源码主题同步到 live 目录的一键脚本

## 主题目录

这套主题主要位于：

- [macos/examples/bubu-theme-pack](/Users/iwitness/Documents/Codex%20Classic/Codex-Dream-Skin-main/macos/examples/bubu-theme-pack)

核心文件包括：

- `theme.json`
- `erbu2.png`
- `erbu3-cutout.png`
- `corner-badge.svg`
- `sync-live-theme.sh`
- `Sync Bubu Theme.command`

## 使用方式

### 修改源码主题

主要编辑：

- `macos/examples/bubu-theme-pack/theme.json`
- `macos/examples/bubu-theme-pack/` 下的素材文件

### 同步并应用

运行：

```bash
/ERBU-Codex-Skin/macos/examples/bubu-theme-pack/sync-live-theme.sh --apply
```

或者直接双击：

```text
Sync Bubu Theme.command
```

## 源码目录和 live 目录

开发时最容易混淆的是这两份路径：

- 源码目录：
  - `macos/examples/bubu-theme-pack/`
- 当前生效的 live 目录：
  - `~/Library/Application Support/CodexDreamSkinStudio/theme/`

建议工作流：

1. 只改源码目录
2. 用同步脚本覆盖 live 目录
3. 立即应用查看效果

## 注意事项

- 请遵守原项目的开源协议
- 请确认背景图、角色图和衍生素材具备公开分发权限
- 本项目不修改官方 `.app` 安装包，依赖原项目的主题注入机制

## 致谢

感谢原项目作者提供完整的主题底座，让角色化、自定义化的 Codex Desktop 主题成为可能。
