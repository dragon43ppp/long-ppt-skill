# 运行方式与依赖

这套 `Long-ppt skill` 不是“只有 PowerShell”。

更准确地说，它是一个多执行层的 PPT 工作流仓库，常见依赖包括：

- PowerShell
- Python
- 可选的图片生成能力
- 可选的 PowerPoint / Office 宏环境

## 各条路线大致依赖什么

### `long-ppt-core`

主要依赖：

- 文档理解
- 人工/智能编排

它更像工作流总控，本身不是重度脚本执行层。

### `long-ppt-image`

主要依赖：

- PowerShell 或脚本封装
- 图片生成模型
- 可选的图片后处理工具

它常常会调用 `gpt-image-2` 或等价图片能力。

### `long-ppt-rebuild`

主要依赖：

- Python
- `python-pptx`
- 可选的 PowerShell 辅助脚本
- 在需要时调用图片生成能力

这条路线不是只有 PowerShell。
真正的重建核心通常是：

- 结构清单
- 资产分类
- `python-pptx` 输出可编辑对象
- 渲染验证

### `long-ppt-hybrid`

主要依赖：

- Python
- `python-pptx`
- 图片处理
- 可选的图片生成能力

### `long-ppt-native`

主要依赖：

- Python
- `python-pptx`

这是最典型的 Python 执行路线。

### `long-ppt-vba`

主要依赖：

- PowerPoint / Office
- VBA 宏环境
- 可选的 PowerShell 辅助脚本

## 所以用户拉走仓库后，能不能直接做出来

答案是：

**不是 100.0% 开箱即用，但也绝对不是“只有说明没有落地”。**

更准确的说法是：

### 可以直接复用的部分

- 工作流思路
- 路线判断
- README / SKILL 说明
- 真实案例文件
- 部分可直接运行的脚本

### 需要本地具备的基础环境

- Python
- `python-pptx`
- PowerShell
- 在需要出图时，可用的图片模型接口
- 在需要 VBA 时，可用的 Office 环境

### 什么时候可以“直接做出来”

如果用户已经具备这些基础条件：

- 有 Python 环境
- 能安装或已有 `python-pptx`
- 有 PowerShell
- 有图片模型接口或不需要图片生成

那么：

- `long-ppt-native`
- `long-ppt-rebuild`
- `long-ppt-hybrid`

这几条路线是可以真正落地执行的，不只是概念。

### 什么时候还不算完全开箱即用

如果用户：

- 没有 Python
- 没有图片接口
- 没有 Office / VBA 环境
- 只复制 skill 文档但没有任何运行脚本能力

那它更像一套“可落地的方法和仓库骨架”，而不是单命令全自动产品。

## 当前最诚实的定位

`Long-ppt skill` 现在是：

- 有真实案例
- 有分路线文档
- 有部分真实脚本和示例文件
- 有明确执行依赖

但它还不是“任何人 clone 下来零配置一键出最终 PPT”的成熟产品。

## 如果要更接近开箱即用，还差什么

最值得继续补的是：

1. 每条路线补统一的 `examples/`
2. 明确 `requirements.txt` 或安装命令
3. 把可执行脚本收敛到固定目录
4. 给 `native / rebuild / hybrid` 各补一个最小可运行示例
