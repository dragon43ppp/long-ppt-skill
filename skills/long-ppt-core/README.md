# long-ppt-core

`long-ppt-core` 是 Long-ppt skill 体系里的总控 skill。

如果你只想先理解整套 Long-ppt 的工作方式，就先看这个 skill。

它负责回答一个核心问题：

这页 PPT，最适合怎么做？

不是所有页都该用同一种方法：

- 有些页应该先出图
- 有些页应该 Hybrid
- 有些页应该用 `python-pptx` 原生重建
- 有些页才适合 VBA

这个 skill 的作用，就是帮助在这些路线之间做正确判断。
