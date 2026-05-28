---
name: long-ppt-core
description: Long-ppt 总控工作流 skill。负责判断 PPT 页面应该走图片优先、Hybrid 重建、python-pptx 原生对象重建，还是 VBA 原生重建路线。适合需要统一调度整套 PPT 生产过程的场景。
---

# long-ppt-core

`long-ppt-core` 是 `Long-ppt skill` 体系里的总控 skill。

它不负责只做一种事情，而是负责判断一页 PPT 最适合走哪条路线，并把整套生产流程串起来。

## 主要职责

- 用中文自然讨论页面目标
- 判断页面是否需要先重设计
- 判断页面适合截图保留还是原生重建
- 在 `long-ppt-image`、`long-ppt-hybrid`、`long-ppt-native`、`long-ppt-vba` 之间选最合适路线
- 以最终可交付 PPT 为目标，而不是只给建议

## 默认判断顺序

1. 页面不好看，先走图片优先
2. 页面像截图或仪表盘，优先走 Hybrid
3. 页面像架构图、框架图、附件页，优先考虑 `python-pptx`
4. 需要宏自动化时，再走 VBA

## 目标

让用户得到真正能交付、能编辑、能继续复用的 PPT。
