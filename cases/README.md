# Cases

这里收集 `Long-ppt skill` 的真实案例、示例文件和代表性路线。

## 当前建议先看这几个

### 1. AI 架构图转可编辑 PPT

- [AI 架构图转可编辑 PPT 说明](./ai-architecture-to-editable-ppt.md)

### 2. 电力可观测性架构图可编辑重建

这个案例更接近 `long-ppt-native` 路线：

- 示例 PPT：
  [电力可观测性架构图_可编辑重建版_v1.pptx](./power-observability-native/电力可观测性架构图_可编辑重建版_v1.pptx)
- 预览图：
  [幻灯片1.PNG](./power-observability-native/幻灯片1.PNG)

### 3. 按原版式重建示例

这个案例更接近 `long-ppt-rebuild` 路线：

- 示例 PPT：
  [arch_like_original_editable.pptx](./ppt2-rebuild-demo/arch_like_original_editable.pptx)
- 参考图：
  [unified_ops_arch_gpt_probe.png](./ppt2-rebuild-demo/unified_ops_arch_gpt_probe.png)

### 4. 同一张架构图的多路线可编辑重建

这个案例更适合看 `long-ppt-rebuild` 和 `long-ppt-vba` 的边界：

- 案例说明：
  [多路线架构图重建案例](./multi-route-architecture-rebuild/README.md)
- Python / `python-pptx` 可编辑版：
  [arch_like_original_editable.pptx](./multi-route-architecture-rebuild/arch_like_original_editable.pptx)
- VBA 模块：
  [architecture_vba_rebuild_v1.bas](./multi-route-architecture-rebuild/architecture_vba_rebuild_v1.bas)
- 参考图：
  [unified_ops_arch_gpt_probe.png](./multi-route-architecture-rebuild/unified_ops_arch_gpt_probe.png)

## 可以怎么理解这些案例

- 现有 PPT + Word 材料重写，属于 `long-ppt-core`
- 截图页、监控页、大屏页重建，属于 `long-ppt-hybrid`
- 按原版式把一页视觉稿变成可编辑 PPT，属于 `long-ppt-rebuild`
- 架构图、附件页、规则清晰的结构页重建，属于 `long-ppt-native`
