# Long-ppt skill

`Long-ppt skill` 是一套面向真实交付场景的 PPT 技能仓库。它不把“生成 PPT”理解成单一步骤，而是把完整流程拆成更接近实际工作的几层能力：

1. 基于现有材料理解内容
2. 提炼页面结构与信息层级
3. 为不同页面选择更合适的重建路线
4. 最终交付可编辑、可维护、可复用的 PPT

这套仓库采用“总仓库 + 多子 skill”的组织方式：

- 一个总仓库
- 多个子 skill
- 每个 skill 聚焦一类明确问题
- 文档优先、复用优先、交付优先

## 它解决的不是“做一页图”，而是“做成一套能交付的 PPT”

很多 PPT 任务真正难的不是画，而是判断：

- 这页的核心信息到底是什么
- 这页应该保留原视觉，还是重新组织结构
- 这页更适合图片优先，还是原生对象重建
- 这页是否值得做成可编辑对象，方便后续继续维护

这也是原始 `ppt1` 路线里最重要的价值：先做结构判断，再决定执行方式。

## 仓库里的 skill

| Skill | 作用 | 适合场景 |
|------|------|------|
| `long-ppt-core` | 结构优先的总控编排 | 现有材料总结、Word 改大纲、整套 PPT 路线判断 |
| `long-ppt-image` | 图片与底板生成 | 封面、背景、结构底板、AI 出图页 |
| `long-ppt-rebuild` | 现有视觉页可编辑重建 | PNG/JPG 视觉稿、截图页、图片版 PPTX 的可编辑重建 |
| `long-ppt-hybrid` | Hybrid 可编辑重建 | 大屏页、仪表盘页、监控页、截图保真页 |
| `long-ppt-native` | `python-pptx` 原生对象重建 | 架构图、附件页、能力图、结构图 |
| `long-ppt-vba` | VBA 原生重建 | 宏驱动的 PowerPoint 工作流 |

## 与 `gpt-image-2` 的关系

`Long-ppt` 负责的是 PPT 工作流与页面路线判断。  
`gpt-image-2` 或兼容图片接口负责的是图片生成执行层。

可以这样理解：

- `long-ppt-image` 是 PPT 场景里的图片能力层
- 图片接口是更通用的素材生成执行层

真实工作流通常是：

1. `long-ppt-core` 判断某页是否需要先出图
2. `long-ppt-image` 定义这页该生成什么图、保留哪些留白、是否要回填
3. 图片链路执行出图
4. 如果任务起点是一页现有视觉稿或图片页，进入 `long-ppt-rebuild`
5. 再根据页面类型进入 `long-ppt-hybrid`、`long-ppt-native` 或 `long-ppt-vba`

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

### 4. 现有视觉页重建路线

适合：

- 用户给的是一页现成图片
- 图片版 PPTX
- 截图页还原
- 希望把整页视觉稿变回可编辑 PPT

### 5. `python-pptx` 原生路线

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

### 6. VBA 路线

适合：

- Office 端本来就依赖宏
- 需要在 PowerPoint 内自动执行重建
- 希望把重建逻辑组织成 VBA 模块

## 推荐使用顺序

1. 先看 [skills/index.md](./skills/index.md)
2. 再看 [workflow-overview.md](./workflow-overview.md)
3. 如果页面视觉本身不够好，优先看 `long-ppt-image`
4. 如果给的是现有图片页、截图页、整页视觉稿，优先看 `long-ppt-rebuild`
5. 如果页面是截图、大屏、监控风页面，优先看 `long-ppt-hybrid`
6. 如果页面是架构图、附件页、结构图，优先看 `long-ppt-native`
7. 如果必须走宏自动化，再看 `long-ppt-vba`

## 真实案例

建议结合这些内容一起看：

- [skills/index.md](./skills/index.md)
- [decision-matrix.md](./decision-matrix.md)
- [workflow-overview.md](./workflow-overview.md)
- [quickstart.md](./quickstart.md)
- [runtime-and-dependencies.md](./runtime-and-dependencies.md)
- [cases/README.md](./cases/README.md)
- [examples/README.md](./examples/README.md)
- [AI 架构图转可编辑 PPT 说明](./cases/ai-architecture-to-editable-ppt.md)
- [电力可观测性架构图可编辑重建版 PPT](./cases/power-observability-native/电力可观测性架构图_可编辑重建版_v1.pptx)
- [电力可观测性架构图预览 PNG](./cases/power-observability-native/幻灯片1.PNG)
- [按原版式重建示例 PPT](./cases/ppt2-rebuild-demo/arch_like_original_editable.pptx)
- [按原版式重建示例参考图](./cases/ppt2-rebuild-demo/unified_ops_arch_gpt_probe.png)

这些案例体现了 Long-ppt 的一个重要原则：

- 不是盲目把图片“反向描出来”
- 而是先抽象成结构模型
- 再用 PowerPoint 原生对象重建

## 可直接运行的脚本

拉取仓库后，可以先直接运行这三份 Python 示例脚本：

```bash
python scripts/build_power_observability_editable.py
python scripts/build_attached_arch_editable.py
python scripts/build_arch_like_original_editable.py
```

默认输出文件：

- `output/power_observability_editable.pptx`
- `output/attached_architecture_editable.pptx`
- `output/arch_like_original_editable.pptx`

这三份脚本分别对应：

- `build_power_observability_editable.py`
  - `long-ppt-native` 路线
  - 用 `python-pptx` 将架构图重建为可编辑 PPT
- `build_attached_arch_editable.py`
  - `long-ppt-native` 路线
  - 用原生对象重建附件/阶段规划类结构页
- `build_arch_like_original_editable.py`
  - `long-ppt-rebuild` 路线
  - 按原版式思路重建分层架构图页面

## 安装与使用

1. 拉取仓库并安装基础依赖：

```bash
git clone https://github.com/dragon43ppp/long-ppt-skill.git
cd long-ppt-skill
pip install -r requirements.txt
```

2. 把需要的子目录复制到你的 skill 目录，例如：

```text
$CODEX_HOME/skills/long-ppt-core
$CODEX_HOME/skills/long-ppt-image
$CODEX_HOME/skills/long-ppt-rebuild
$CODEX_HOME/skills/long-ppt-hybrid
$CODEX_HOME/skills/long-ppt-native
$CODEX_HOME/skills/long-ppt-vba
```

3. 按页面类型选择对应 skill：

- 现有材料总结、Word 改大纲、整套 PPT 路线判断：`long-ppt-core`
- 图片页、截图页、视觉稿还原：`long-ppt-rebuild`
- 大屏页、监控页、仪表盘页：`long-ppt-hybrid`
- 架构图、附件页、规则明确的结构页：`long-ppt-native`
- 需要先做底板、封面或视觉页：`long-ppt-image`
- 必须依赖 Office 宏环境：`long-ppt-vba`

## 仓库结构

```text
long-ppt-skill/
├─ README.md
├─ LICENSE
├─ decision-matrix.md
├─ workflow-overview.md
├─ quickstart.md
├─ runtime-and-dependencies.md
├─ requirements.txt
├─ skills/
│  ├─ index.md
│  ├─ long-ppt-core/
│  ├─ long-ppt-image/
│  ├─ long-ppt-rebuild/
│  ├─ long-ppt-hybrid/
│  ├─ long-ppt-native/
│  └─ long-ppt-vba/
├─ cases/
└─ examples/
```

## 设计原则

这套 skill 不追求“所有页面都用同一种方法做”。
它更看重的是：

- 页面最终能交付
- 重要内容可编辑
- 后续还能继续维护
- 生产效率足够高
