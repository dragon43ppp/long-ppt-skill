---
name: long-ppt-vba
description: Long-ppt 的 VBA 原生重建 skill。适用于需要在 PowerPoint 端导入模块、运行宏，并以 PowerPoint 原生形状、线条、文本框重建结构化页面的场景。更适合已存在宏工作流的办公环境。
---

# long-ppt-vba

`long-ppt-vba` 负责 VBA 路线。

## 目标

把结构化页面的重建逻辑组织成 PowerPoint 宏可执行流程。

## 适合场景

- PowerPoint 宏导入
- VBA 模块组织
- PowerPoint 端自动执行重建
- 宏驱动的页面批量生成

## 核心原则

- 只在宏真正有价值时使用
- 不把 VBA 当成默认路线
- 更适合结构化页面，不适合图片密集型页面

## 与其他路线的关系

- `long-ppt-core`：判断是否必须走宏
- `long-ppt-native`：不依赖宏的优先替代路线
- `long-ppt-vba`：宏环境下的执行路线
