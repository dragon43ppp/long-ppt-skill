# Long-ppt 技能索引

## 技能地图

| Skill | 主要作用 | 最适合场景 |
|------|------|------|
| `long-ppt-core` | 总控与路线编排 | 现有材料总结、大纲重写、整套 PPT 路线判断 |
| `long-ppt-image` | 图片与底板生成 | 封面、背景、结构示意图、替代真实项目图 |
| `long-ppt-rebuild` | 现有视觉页可编辑重建 | PNG/JPG 视觉稿、图片版 PPTX、截图页还原成可编辑 PPT |
| `long-ppt-hybrid` | Hybrid 可编辑重建 | 截图页、监控页、大屏页、仪表盘页 |
| `long-ppt-native` | `python-pptx` 原生重建 | 架构图、附件页、框架图、能力地图 |
| `long-ppt-vba` | VBA 原生重建 | 宏驱动的 PowerPoint 自动化重建流程 |

## 推荐入口

如果你不确定该从哪里开始，建议按这个顺序看：

1. 先看 `long-ppt-core`
2. 判断这页是需要先重做视觉，还是直接重建
3. 如果需要先出图，看 `long-ppt-image`
4. 如果给的是现有图片页 / 截图页 / 整页视觉稿，看 `long-ppt-rebuild`
5. 如果是截图 / 大屏 / 仪表盘页，看 `long-ppt-hybrid`
6. 如果是架构图 / 框架图 / 附件页，看 `long-ppt-native`
7. 如果当前工作流是 Office 宏优先，再看 `long-ppt-vba`
