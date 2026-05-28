# Long-ppt skill

中文优先说明。
English note: this repository is Chinese-first and focuses on practical PowerPoint production workflows.

`Long-ppt skill` 是一套面向真实交付场景的 PPT 技能仓库。它不把“生成 PPT”理解成单一步骤，而是把整个过程拆成更贴近实际工作的几层能力：

1. 基于现有材料理解内容
2. 提炼页面结构与信息层级
3. 为不同页面选择最合适的重建路线
4. 最终交付可编辑、可维护、可复用的 PPT

这套仓库参考了 Baoyu skill 的组织方式：

- 一个总仓库
- 多个子 skill
- 每个 skill 聚焦一类明确问题
- 文档优先、复用优先、落地优先

## 它解决的不是“做一页图”，而是“做成一套能交付的 PPT”

很多 PPT 任务真正难的不是画，而是判断：

- 这页的核心信息到底是什么
- 这页应该保留原视觉，还是重新组织结构
- 这页更适合图片优先，还是原生对象重建
- 这页是否值得做成可编辑对象，方便后续继续维护

这也是原始 `ppt1` 路线最重要的价值：先做结构判断，再决定执行方式。

## 仓库里的 skill

| Skill | 作用 | 适合场景 |
|------|------|------|
| `long-ppt-core` | 结构优先的总控编排 | 整套 PPT 或多页方案的路线判断 |
| `long-ppt-image` | 图片与底板生成 | 封面、背景、结构底板、AI 出图页 |
| `long-ppt-hybrid` | Hybrid 可编辑重建 | 截图页、监控页、大屏页、仪表盘页 |
| `long-ppt-native` | `python-pptx` 原生对象重建 | 架构图、附件页、框架页、能力图 |
| `long-ppt-vba` | VBA 原生重建 | 宏驱动的 PowerPoint 工作流 |

## 与 `openai-image2-production` 的关系

`Long-ppt` 负责的是 PPT 工作流与页面路线判断。
`openai-image2-production` 负责的是 GPT Image 2 出图执行层。

可以这样理解：

- `long-ppt-image` 是 PPT 场景里的图片能力层
- `openai-image2-production` 是更通用的图片生产执行层

真实工作流通常是：

1. `long-ppt-core` 判断某页是否需要先出图
2. `long-ppt-image` 定义这页该生成什么图、保留哪些留白、是否要可回填
3. `openai-image2-production` 或等价图片链路执行 `gpt-image-2`
4. 再根据页面类型进入 `hybrid`、`native` 或 `vba` 重建

## Long-ppt 的核心能力分层

### 1. 结构提炼

这是 Long-ppt 最关键的一层。

先基于现有材料回答这些问题：

- 标题是什么
- 主信息是什么
- 解释信息是什么
- 哪些区域需要保留视觉
- 哪些区域适合还原成原生对象

### 2. 图片路线

适合：

- 封面
- 背景图
- 结构底板
- 抽象场景图
- 先出图再接 PPT 的页面

### 3. Hybrid 路线

适合：

- 复杂截图页
- 大屏页
- 仪表盘页
- 希望保留原视觉，同时把核心文字改成可编辑

### 4. `python-pptx` 原生路线

适合：

- 架构图
- 框架图
- 附件页
- 能力图
- 结构规则明确的方案页

这条路线的核心价值是：

- 直接输出普通 `pptx`
- 不依赖宏
- 原生对象稳定
- 方便继续编辑和复用

### 5. VBA 路线

适合：

- Office 端本来就依赖宏
- 需要在 PowerPoint 内自动执行重建
- 希望把重建逻辑组织成 VBA 模块

## 推荐使用顺序

1. 先看 `long-ppt-core`
2. 如果页面视觉本身不够好，先看 `long-ppt-image`
3. 如果页面是截图或大屏，优先看 `long-ppt-hybrid`
4. 如果页面是结构图或附件页，优先看 `long-ppt-native`
5. 如果必须走宏自动化，再看 `long-ppt-vba`

## 真实案例

建议结合这些内容一起看：

- [skills/index.md](./skills/index.md)
- [decision-matrix.md](./decision-matrix.md)
- [workflow-overview.md](./workflow-overview.md)
- [cases/README.md](./cases/README.md)
- [cases/ai-architecture-to-editable-ppt.md](./cases/ai-architecture-to-editable-ppt.md)
- `D:\Projects\southwest_pipeline_colasoft\output\电力可观测性架构图_可编辑重建版_v1.pptx`
- `D:\Projects\southwest_pipeline_colasoft\output\preview_power_observability_editable_v1`

这个案例体现了 Long-ppt 的一个很重要的原则：

- 不是盲目把图片“反向描出来”
- 而是先抽象成结构模型
- 再用 PowerPoint 原生对象重建

## 安装方式

把需要的子目录复制到你的 skill 目录，例如：

```text
$CODEX_HOME/skills/long-ppt-core
$CODEX_HOME/skills/long-ppt-image
$CODEX_HOME/skills/long-ppt-hybrid
$CODEX_HOME/skills/long-ppt-native
$CODEX_HOME/skills/long-ppt-vba
```

## 仓库结构

```text
long-ppt-skill/
├─ README.md
├─ LICENSE
├─ .gitignore
├─ decision-matrix.md
├─ skills/
│  ├─ index.md
│  ├─ long-ppt-core/
│  ├─ long-ppt-image/
│  ├─ long-ppt-hybrid/
│  ├─ long-ppt-native/
│  └─ long-ppt-vba/
├─ cases/
└─ scripts/
```

## 设计原则

这套 skill 不追求“所有页面都用同一种方法做”。
它更看重的是：

- 页面最终能交付
- 重要内容可编辑
- 后续还能继续维护
- 生产效率足够高

## 后续建议

后续可以继续补：

- `cases/` 真实案例
- `examples/` 输入输出示例
- `CHANGELOG.md`
- 更多可复用脚本与模板
