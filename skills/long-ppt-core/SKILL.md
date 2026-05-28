---
name: long-ppt-core
description: Long-ppt 的总控工作流 skill。适用于基于现有 PPT、Word、方案文档和零散材料做内容理解、结构提炼、大纲重写，并判断页面应该走图片优先、Hybrid 重建、python-pptx 原生重建还是 VBA 路线。
---

# long-ppt-core

`long-ppt-core` 是 `Long-ppt skill` 的总控层。

## 目标

把现有材料整理成一套真正可交付的 PPT 生产路线，而不是只给零散建议。

## 典型输入

- 现有 PPT
- Word 文档
- 项目材料
- 演讲稿
- 汇报提纲
- 零散内容笔记

## 典型输出

- 内容总结
- 大纲重写
- 页面结构拆解
- 路线判断
- 后续 image / hybrid / native / vba 的分配建议

## 主要职责

- 理解材料在讲什么
- 判断逻辑顺序是否成立
- 提炼标题、章节、页面层次
- 识别哪些页需要重写
- 判断每页适合走哪条实现路线
- 以最终交付为目标组织整套流程

## 核心原则

- 不急着画，先理解
- 不急着重建，先提炼结构
- 不强求统一技术路线
- 以最终交付质量优先，而不是单一步骤最炫

## 适用判断

优先使用 `long-ppt-core` 的情况：

- 用户给的是一堆材料，不是单页明确需求
- 需要先总结和重写大纲
- 需要整套 PPT 重构
- 需要统一编排多个子路线

## 与其他子 skill 的关系

- `long-ppt-core`：总控与路线判断
- `long-ppt-image`：图片与视觉底板
- `long-ppt-hybrid`：截图型可编辑重建
- `long-ppt-native`：结构图原生重建
- `long-ppt-vba`：宏自动化重建
