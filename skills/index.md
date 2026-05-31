# Long-ppt 技能地图

## 总览

| Skill | 主要作用 | 更适合场景 |
|------|------|------|
| `long-ppt-core` | 总控编排与路线判断 | 现有材料总结、Word 改大纲、整套 PPT 重写 |
| `long-ppt-image` | 图片与底板生成 | 封面、背景、结构示意图、抽象视觉页 |
| `long-ppt-rebuild` | 现有视觉页可编辑重建 | PNG/JPG 视觉稿、图片版 PPTX、截图页还原 |
| `long-ppt-hybrid` | Hybrid 可编辑重建 | 大屏页、监控页、截图保真页、仪表盘页 |
| `long-ppt-native` | `python-pptx` 原生重建 | 架构图、附件页、能力图、规则明确的结构页 |
| `long-ppt-vba` | VBA 原生重建 | Office 内执行、宏驱动自动化重建 |

## 推荐顺序

如果你不确定该从哪里开始，建议按这个顺序看：

1. 先看 `long-ppt-core`
2. 判断该页是需要先做新视觉，还是直接重建
3. 如果需要先出图，看 `long-ppt-image`
4. 如果输入是图片页、截图页、整页视觉稿，看 `long-ppt-rebuild`
5. 如果是大屏、监控、仪表盘类页面，看 `long-ppt-hybrid`
6. 如果是架构图、附件页、结构图，看 `long-ppt-native`
7. 如果前提就是 Office 宏环境，再看 `long-ppt-vba`
