# Long-ppt Workflow Overview

`Long-ppt skill` 的整体工作流可以简单理解成下面这条链路：

1. 输入现有材料
   - PPT
   - Word
   - 方案稿
   - 演讲稿
   - 零散项目材料

2. 由 `long-ppt-core` 先做理解和提炼
   - 内容总结
   - 结构提炼
   - 大纲重写
   - 路线判断

3. 按页面类型分流
   - 视觉需要先加强：`long-ppt-image`
   - 截图 / 大屏 / 仪表盘：`long-ppt-hybrid`
   - 架构图 / 附件页 / 框架图：`long-ppt-native`
   - 宏驱动环境：`long-ppt-vba`

4. 最终交付
   - 可展示
   - 可编辑
   - 可继续维护

## 一句话总结

Long-ppt 不只是“生成 PPT”，而是“基于现有材料，把 PPT 做成真正能交付的版本”。
