# 运行方式与依赖

很多人会先问一个问题：这套仓库是不是“只有 PowerShell”。

结论很明确：**不是。**

`Long-ppt skill` 是一个多执行层的 PPT 工作流仓库，核心能力包括：

- Python
- `python-pptx`
- PowerShell
- 可选的图片生成接口
- 可选的 Office / VBA 环境

## 各条路线主要依赖什么

### `long-ppt-core`

主要偏：

- 内容理解
- 结构编排
- 大纲重写

它更像路线总控，不强依赖某一个固定脚本环境。

### `long-ppt-image`

主要偏：

- 图片接口调用
- 图片底板与视觉生成
- 可选的 PowerShell 包装脚本

### `long-ppt-rebuild`

主要偏：

- Python
- `python-pptx`
- 页面结构拆解
- 必要时补充图片资产

这条路线不是“只会贴一张大图”，而是把原页面拆成可编辑对象再重建。

### `long-ppt-hybrid`

主要偏：

- Python
- `python-pptx`
- 图片保真
- 局部可编辑覆盖

### `long-ppt-native`

主要偏：

- Python
- `python-pptx`

这是最典型的 PowerPoint 原生对象重建路线。

### `long-ppt-vba`

主要偏：

- PowerPoint / Office
- VBA 宏环境
- 可选的 PowerShell 辅助脚本

## 用户拉走仓库后能不能直接做

可以复用，但不是“什么都不用配就百分之百即开即用”。

更准确地说：

### 可以直接复用的部分

- 路线判断
- README / SKILL 文档
- 案例结构
- 部分可直接运行的脚本思路

### 还需要用户本地具备的环境

- Python
- `python-pptx`
- PowerShell
- 如果要出图，需要可用的图片接口
- 如果要走 VBA，需要可用的 Office 环境

## 目前最接近“拿来就能跑”的部分

如果用户已经具备 Python 与 `python-pptx` 环境，那么：

- `long-ppt-native`
- `long-ppt-rebuild`
- `long-ppt-hybrid`

这几条路线已经不是纯概念，而是有真实案例和执行路径可参考的。

## 后续如果要继续增强可用性

建议继续补：

1. 每条路线统一的 `examples/`
2. 更明确的脚本入口
3. 更完整的依赖安装说明
4. 更小、更标准化的最小示例工程
