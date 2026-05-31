# 多路线架构图重建案例

这个案例用同一张架构图参考稿，分别展示两条可编辑重建路线：

- `long-ppt-rebuild`
  - 更强调按原版式还原页面结构
  - 输出普通可编辑 PPTX
- `long-ppt-vba`
  - 更强调 PowerPoint / VBA 原生对象重建
  - 适合结构化框体、标签、分层清晰的架构图页面

## 案例文件

- 参考图：
  [unified_ops_arch_gpt_probe.png](./unified_ops_arch_gpt_probe.png)
- Python / `python-pptx` 可编辑版：
  [arch_like_original_editable.pptx](./arch_like_original_editable.pptx)
- VBA 模块：
  [architecture_vba_rebuild_v1.bas](./architecture_vba_rebuild_v1.bas)

## 这组案例说明什么

同一张架构图，不一定只有一种可编辑化方式。

- 如果目标是“视觉版式尽量接近原图，并保留继续编辑能力”，更适合 `long-ppt-rebuild`
- 如果目标是“尽可能变成 PowerPoint 原生形状、文本框和结构对象”，更适合 `long-ppt-vba`

## 当前仓库里的对应能力

- `scripts/build_arch_like_original_editable.py`
  - 对应 `long-ppt-rebuild`
- `skills/long-ppt-vba/`
  - 对应 VBA 路线说明

后续如果图片接口稳定，这个案例会继续补上：

- 同一主题的 `gpt-image-2` 新生成参考图
- 基于新图的 `python-pptx` 重建版
- 基于新图的 VBA 重建版
