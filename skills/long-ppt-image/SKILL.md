---
name: long-ppt-image
description: Long-ppt 的图片与底板生成 skill。适用于封面、背景图、章节页、结构示意图、替代真实项目图的架构示意页，以及 AI 先出图后再回填或重建 PPT 的场景。可与 openai-image2-production 配合执行 gpt-image-2。
---

# long-ppt-image

`long-ppt-image` 负责出图路线。

## 目标

先把页面的视觉底板建立出来，为后续 PPT 回填或重建服务。

## 适合场景

- 封面图
- 背景图
- 章节页
- 架构示意图
- 结构化图示底板
- AI 先出图再回填 PPT

## 核心原则

- 先解决视觉问题，再决定是否继续重建
- 重点关注版式、留白、氛围和可回填区域
- 不要让图片掩盖内容结构问题

## 与其他子 skill 的关系

- `long-ppt-core`：判断是否需要先出图
- `long-ppt-image`：定义并生成所需图片
- `long-ppt-hybrid` / `long-ppt-native`：在必要时继续做可编辑重建

## 执行层建议

如果需要实际调用图片模型，推荐与 `openai-image2-production` 结合。
