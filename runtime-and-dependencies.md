# 运行方式与依赖

很多人会先问一个问题：这套仓库是不是“100% PowerShell”。

结论很明确：**不是。**

从真实交付栈看，`Long-ppt skill` 是一个多执行层的 PPT 工作流仓库，核心能力包括：

- Python
- `python-pptx`
- PowerShell
- 可选的图片生成接口
- 可选的 Office / VBA 环境

从当前公开仓库内容看：

- 已公开的辅助脚本里，当前主要是 PowerShell 图片接口探测脚本
- 已公开的可安装 skill 文档和案例，覆盖了 `core / image / rebuild / hybrid / native / vba`
- 已验证的可编辑 PPT 重建案例，并不只是 PowerShell，关键交付路线实际依赖 `Python + python-pptx`

也就是说，**仓库里现在公开的脚本数量并不等于真实项目的执行栈。**

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

## 拉取仓库后能不能真实安装和使用

可以，但它的定位是“可安装 skill 仓库”，不是“一条命令包办所有 PPT 任务”的单体软件。

更准确地说：

### 可以直接复用的部分

- 各子 skill 的 README / SKILL
- 路线判断和页面分流方法
- 已上传的真实案例文件
- `requirements.txt` 定义的 Python 依赖
- 现有 PowerShell 辅助脚本

### 还需要用户本地具备的环境

- Python
- `python-pptx`
- PowerShell
- 如果要出图，需要可用的图片接口
- 如果要走 VBA，需要可用的 Office 环境

## 目前最接近“拿来就能用”的部分

如果用户已经具备 Python 与 `python-pptx` 环境，那么：

- `long-ppt-native`
- `long-ppt-rebuild`
- `long-ppt-hybrid`

这几条路线已经不是概念说明，而是对应真实案例和可落地方法的。
