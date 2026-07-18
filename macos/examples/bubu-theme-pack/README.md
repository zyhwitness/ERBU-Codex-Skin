# 一二布布 Dream Skin

基于开源项目 [Fei-Away/Codex-Dream-Skin](https://github.com/Fei-Away/Codex-Dream-Skin) 二次修改的一套 Codex 桌面端主题。

这套主题的目标不是只换一张背景图，而是把客户端的背景、强调色、品牌区和装饰图统一成「一二布布」风格。

## 致谢与来源

- 原项目：`Fei-Away/Codex-Dream-Skin`
- 原项目提供的能力：
  - Codex Desktop 主题注入方案
  - 主题配置加载
  - macOS 启动 / 切换 / 恢复脚本
  - 背景图主题与运行时应用机制

本主题包是在原项目基础上继续定制，并补充了部分更适合角色主题的显示逻辑与同步脚本。

## 这套主题做了什么改动

### 视觉素材

- 背景图替换为 `erbu2.png`
- 角色装饰图替换为布布相关素材
- `heroSticker` 使用透明底贴图 `erbu3-cutout.png`
- `brandIcon` 使用圆形角标图 `corner-badge.svg`

### 主题配色

- 将默认偏粉的强调色改成更贴近背景灌木的绿色系
- 按钮、边框、选中态、标签高亮统一切换到这套绿色调

### 逻辑调整

相较原项目，这里额外调整/扩展了这些点：

- 支持 `decor.brandIcon / heroSticker` 等装饰图配置
- 修正装饰图 `offsetX / offsetY` 从配置传递到渲染层的链路
- 补充源码主题同步到 live 目录的一键脚本

## 目录说明

- `theme.json`
  - 主题主配置文件
- `erbu2.png`
  - 主背景图
- `corner-badge.svg`
  - 当前品牌区图标素材
- `erbu3-cutout.png`
  - 透明底角色贴图
- `sync-live-theme.sh`
  - 把源码主题同步到本机 live 目录
- `Sync Bubu Theme.command`
  - 双击同步并立即应用

## 如何使用

### 方式一：手动同步

修改完 `theme.json` 或素材后运行：

```bash
/ERBU-Codex-Skin/macos/examples/bubu-theme-pack/sync-live-theme.sh --apply
```

### 方式二：双击应用

直接双击：

```text
Sync Bubu Theme.command
```

它会自动：

1. 把当前目录同步到本机主题库目录
2. 覆盖当前正在生效的 live 主题目录
3. 立即重新应用主题

## 源码目录和 live 目录的区别

如果你也想继续改主题，最常接触的是这两份：

- 源码主题目录：
  - `macos/examples/bubu-theme-pack/`
- 当前生效的 live 目录：
  - `~/Library/Application Support/CodexDreamSkinStudio/theme/`

建议的工作流是：

1. 只修改源码目录里的 `theme.json` 和素材
2. 运行 `sync-live-theme.sh --apply`
3. 让脚本自动同步到 live 目录并应用

## 开源说明建议

如果你准备把这套主题单独作为新仓库开源，建议保留这段说明：

> 本项目基于 `Fei-Away/Codex-Dream-Skin` 二次修改，原项目负责 Codex Desktop 的主题注入与运行时切换能力；本仓库主要提供「一二布布」主题素材、配置，以及少量针对角色主题的逻辑扩展与本地同步脚本。

## 许可与注意事项

- 请遵守原项目的开源协议
- 如公开发布，请确认你使用的角色素材、背景图和衍生图具备可公开分发权限
- 本主题不修改官方 `.app` 安装包，依赖原项目提供的主题注入机制
