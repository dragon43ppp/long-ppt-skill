---
name: long-ppt-rebuild
description: Long-ppt 的现有视觉页重建 skill。适用于将 PNG/JPG/WebP 视觉稿、图片版 PPTX、截图页或整页图片幻灯片语义化重建为可编辑 PPTX，强调文本原生化、视觉资产分类和交付验证。
---

# long-ppt-rebuild

`long-ppt-rebuild` 负责“现有视觉页 -> 可编辑 PPT”这条路线。

## 目标

把一页已经存在的视觉页重建为可编辑 PPT，而不是简单插回一张图片。

## 典型输入

- PNG / JPG / WebP 幻灯片图片
- 图片版 PPTX
- 单页视觉稿
- 截图页

## 典型输出

- 普通 `pptx`
- 原生文本、卡片、标签、线条、表格
- 必要时带独立视觉资产
- 可编辑、可验证的重建结果

## 核心原则

- 先做视觉清单，再做重建
- 能原生化的内容尽量原生化
- 复杂视觉元素单独作为资产处理
- 交付前必须有渲染验证

## 它不是什么

它不是：

- 从零做一套新 PPT
- 只把图片塞进 PPT
- 不经验证就宣称重建完成

## 与其他子 skill 的边界

- `long-ppt-image`：适合先出新图
- `long-ppt-hybrid`：适合截图型复杂页面的混合编辑
- `long-ppt-native`：适合结构化图示原生重建
- `long-ppt-rebuild`：适合从现有整页视觉稿出发做语义重建
