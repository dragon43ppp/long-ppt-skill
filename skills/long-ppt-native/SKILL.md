---
name: long-ppt-native
description: Long-ppt 的 python-pptx 原生对象重建 skill。适用于架构图、框架图、附件页、能力地图等结构化页面，把原图或既有材料提炼为结构模型后，输出普通可编辑 PPTX，不依赖宏。
---

# long-ppt-native

`long-ppt-native` 负责 `python-pptx` 原生重建路线。

## 目标

把结构化页面重建为 PowerPoint 原生对象，而不是图片页。

输出重点：

- 普通 `pptx`
- 可编辑对象
- 稳定布局
- 可继续维护

## 最适合的页面类型

- 架构图
- 框架图
- 附件页
- 能力地图
- 分层平台图
- 结构规则明确的方案页

## 不要把它理解成什么

它不是简单“描图”。

更准确的理解是：

1. 先提炼结构
2. 再抽象组件
3. 最后输出原生对象

## 核心原则

- 优先保留结构，而不是追求无意义的像素级自动描边
- 文本层应尽量完整保留
- 连线关系应尽量明确表达
- 相同结构要抽象成复用组件
- 最终结果要方便继续修改

## 典型输出对象

- 文本框
- 圆角矩形 / 矩形
- 分层容器
- 标签
- 连接线 / 箭头

## 路线判断

优先选择 `long-ppt-native` 的情况：

- 用户要正常 `pptx`
- 页面是结构图，不是截图页
- 后续要继续改标题、模块、关系
- 不希望依赖 VBA

不优先选择的情况：

- 页面是复杂大屏截图
- 页面是高密度 UI 画面
- 页面更适合保留图片视觉

这类情况应先考虑 `long-ppt-hybrid`。

## 真实案例

### 电力可观测性架构图可编辑重建

- PPT 输出：
  - `D:\Projects\southwest_pipeline_colasoft\output\电力可观测性架构图_可编辑重建版_v1.pptx`
- 预览目录：
  - `D:\Projects\southwest_pipeline_colasoft\output\preview_power_observability_editable_v1`

这个案例体现的是高保真结构重建，而不是重设计。

### AI 示意图到可编辑 PPT

如果原始真实架构图不能公开，也可以先生成替代性示意图，再走原生重建路线。

参考：

- `../../cases/ai-architecture-to-editable-ppt.md`

## 与其他子 skill 的关系

- `long-ppt-core`：负责判断这页是否应该走 native
- `long-ppt-image`：在需要时先提供示意图或底板
- `long-ppt-native`：真正执行原生可编辑重建
- `long-ppt-vba`：在宏驱动场景下作为替代路线
