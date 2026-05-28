# Long-ppt skill

中文优先说明。  
English note: this repository is Chinese-first and focuses on practical PPT production workflows.

`Long-ppt skill` 是一个面向真实交付场景的 PPT skill 集合仓库。  
它的核心不是单纯“生成 PPT”或“把图贴进去”，而是：

1. 基于现有材料理解内容
2. 提炼页面结构
3. 判断每页最适合的重建路线
4. 最终落成可交付、可编辑、可继续复用的 PPT

这套仓库的设计思路参考了 `Baoyu` 系列 skill 的组织方式：

- 一个总仓库
- 多个子 skill
- 每个 skill 解决一类明确问题
- 文档优先、可复用优先、可落地优先

## Long-ppt 的核心工作方式

Long-ppt 不是只做一种事，而是围绕“现有材料 -> 结构提炼 -> 页面重构 -> PPT 交付”来工作。

也就是说，一页 PPT 进入这套流程后，通常不是直接开始画，而是先回答这些问题：

- 这页真正的核心信息是什么
- 这页是应该保留原视觉，还是应该重构
- 这页更适合截图保留，还是适合做成原生对象
- 这页是应该先出图，还是应该直接重建

这是你原来 `ppt1` 最重要的一层能力，也是 Long-ppt 的总控逻辑。

## 仓库里的 skill

| Skill | 作用 | 适合场景 |
|------|------|------|
| `long-ppt-core` | 总控型工作流 skill，负责基于现有材料提炼结构并判断页面路线 | 需要统一调度整套 PPT 工作流 |
| `long-ppt-hybrid` | Hybrid 可编辑重建 | 截图页、监控页、仪表盘页 |
| `long-ppt-native` | `python-pptx` 原生对象重建 | 架构图、附件页、框架图、能力地图 |
| `long-ppt-vba` | VBA 原生重建 | 宏自动化场景、PowerPoint 端重建 |
| `long-ppt-image` | PPT 出图与图像底板生成 | 封面、背景图、结构底板、AI 出图页 |

## 和 openai-image2-production 的关系

`long-ppt-image` 这一条能力，实际就是可以和 `openai-image2-production` 配合使用的。

你可以这样理解：

- `Long-ppt skill` 负责 PPT 工作流和页面重构判断
- `openai-image2-production` 负责项目级 GPT Image 2 出图执行

也就是说：

- `long-ppt-image` 是 PPT 场景里的图片能力层
- `openai-image2-production` 是更通用的图像生产工具层

在真实工作流里，两者是可以融合使用的：

1. `long-ppt-core` 判断某页需要先出图
2. `long-ppt-image` 组织这页的出图目标、构图和留白要求
3. `openai-image2-production` 执行 GPT Image 2 生图
4. Long-ppt 再决定是否继续 Hybrid / Native / VBA 重建

## 能力分层

### 1. 结构提炼层

这是 Long-ppt 最核心的一层。

先基于现有材料做这些事情：

- 理解页面要表达什么
- 把材料拆成结构
- 判断哪些内容是主信息
- 判断哪些区域要重构，哪些区域要保留

### 2. 图片路线

适合：

- 封面
- 背景图
- 结构底板
- 氛围插图
- AI 先出图后再做 PPT 的场景

### 3. Hybrid 路线

适合：

- 复杂截图页
- 大屏页
- 仪表盘页
- 想保留视觉效果，同时把关键文字改成可编辑

### 4. `python-pptx` 路线

适合：

- 架构图
- 框架图
- 附件页
- 能力地图
- 结构规则明确的方案页

这条路线的核心价值是：

- 直接输出普通 `pptx`
- 不依赖宏
- 原生对象稳定
- 方便继续编辑和复用

### 5. VBA 路线

适合：

- 需要在 PowerPoint 端自动执行
- 当前 Office 工作流本来就依赖宏
- 要做 PowerPoint 原生对象重建，但希望通过 VBA 模块组织

## 推荐使用顺序

一般建议按这个顺序理解和使用：

1. 先看 `long-ppt-core`
2. 再看 `long-ppt-image`
3. 如果页面是截图型，走 `long-ppt-hybrid`
4. 如果页面是结构化图示页，优先看 `long-ppt-native`
5. 如果必须走宏自动化，再看 `long-ppt-vba`

## 安装方式

把整个仓库拉下来后，将需要的 skill 目录复制到你的 Codex skill 目录中，例如：

```text
$CODEX_HOME/skills/long-ppt-core
$CODEX_HOME/skills/long-ppt-hybrid
$CODEX_HOME/skills/long-ppt-native
$CODEX_HOME/skills/long-ppt-vba
$CODEX_HOME/skills/long-ppt-image
```

## 仓库结构

```text
long-ppt-skill/
├─ README.md
├─ LICENSE
├─ .gitignore
└─ skills/
   ├─ long-ppt-core/
   ├─ long-ppt-hybrid/
   ├─ long-ppt-native/
   ├─ long-ppt-vba/
   └─ long-ppt-image/
```

## 设计原则

这套 skill 不追求“所有页面都用同一种方法做”。

更看重的是：

- 页面最终能交付
- 重要内容可编辑
- 用户后续还能继续维护
- 生产效率足够高

## 后续可继续补充

后续可以继续加：

- `cases/` 真实案例
- `decision-matrix.md` 路线判断表
- `examples/` 示例输入输出
- `CHANGELOG.md`
