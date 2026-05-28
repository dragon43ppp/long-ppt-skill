---
name: long-ppt-image
description: Long-ppt 的图片与底板生成 skill。负责 PPT 封面、背景图、结构底板、氛围插图和 AI 先出图后回填 PPT 的场景，适合与 GPT Image 2 或其他图像生成能力配合使用。它可以和 openai-image2-production 结合，作为 Long-ppt 体系里的图像生产执行层。
---

# long-ppt-image

`long-ppt-image` 负责出图路线。

## 适合场景

- 封面图
- 背景图
- 架构底板
- 结构化图示底板
- AI 先出图再回填 PPT

## 核心价值

- 先把视觉基础做强
- 给后续 Hybrid 或原生重建打底

## 与 openai-image2-production 的关系

如果需要真正执行 GPT Image 2 生图，可以把这个 skill 和 `openai-image2-production` 配合使用：

- `long-ppt-image` 负责定义 PPT 页面需要什么图
- `openai-image2-production` 负责把图生成出来
