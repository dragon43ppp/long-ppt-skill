---
name: long-ppt-native
description: Long-ppt 的 python-pptx 原生对象重建 skill。使用 python-pptx 把架构图、附件页、框架图、能力地图等结构化页面重建为 PowerPoint 原生对象，输出普通可编辑 PPTX，不依赖宏。
---

# long-ppt-native

`long-ppt-native` 负责 `python-pptx` 路线。

## 适合场景

- 架构图
- 附件页
- 框架图
- 能力地图
- 规则明确、布局稳定的结构化页面

## 典型结果

- 原生 PowerPoint 对象
- 大量文本框、矩形、连接线、标签
- 普通 `pptx`
- 不依赖宏

## 适合什么时候优先选

- 用户要正常 `pptx`
- 页面是结构化图示
- 后续还要继续深度编辑
- 当前环境下 `python-pptx` 比 VBA 更稳
