# long-ppt-vba

`long-ppt-vba` 是 `Long-ppt skill` 里面向 VBA / 宏自动化工作流的一条路线。

它适合那些已经明确依赖 PowerPoint 宏环境的场景，而不是默认所有页面都走宏。

## 最适合它的场景

- 需要导入 `.bas` 模块
- 需要在 PowerPoint 端直接运行宏
- 已有稳定的 Office 宏工作流
- 结构化页面需要在 PowerPoint 内自动重建

## 它和 `python-pptx` 的区别

`long-ppt-native` 更适合：

- 直接输出普通 `pptx`
- 不依赖宏
- 脚本侧稳定批量生成

`long-ppt-vba` 更适合：

- 当前办公室环境已经依赖宏
- 需要把重建逻辑放在 PowerPoint 内执行
- 需要与既有 VBA 模块体系兼容

## 什么时候优先选它

- 用户明确说要 VBA
- 页面结构规则明确
- 需要宏导入、宏执行、宏分发
- 现有组织流程就是 PowerPoint 宏优先

## 一句话定位

`long-ppt-vba` 是面向 Office 宏环境的 PowerPoint 原生对象自动化重建能力。
