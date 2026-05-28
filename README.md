# Long-ppt skill

中文优先说明。  
English note: this repository is Chinese-first and focuses on practical PPT production workflows.

`Long-ppt skill` 是一个面向真实交付场景的 PPT skill 集合仓库。  
它不是单一 skill，而是一组围绕 PowerPoint 生产、重建、可编辑化、出图和原生对象还原展开的能力模块。

这套仓库的设计思路，参考了 `Baoyu` 系列 skill 的组织方式：

- 一个总仓库
- 多个子 skill
- 每个 skill 解决一类明确问题
- 文档优先、可复用优先、可落地优先

## 适合谁

适合这些场景：

- 要把方案内容快速做成 PPT
- 要把截图页、监控页、架构页变成可编辑 PPT
- 要先用 AI 生图，再回填成 PPT
- 要把结构化页面用 `python-pptx` 或 VBA 重建成 PowerPoint 原生对象
- 要做“能交付、能继续改、能复用”的企业级 PPT

## 仓库里的 skill

| Skill | 作用 | 适合场景 |
|------|------|------|
| `long-ppt-core` | 总控型工作流 skill，负责判断一页该走哪条路线 | 需要统一调度整套 PPT 工作流 |
| `long-ppt-hybrid` | Hybrid 可编辑重建 | 截图页、监控页、仪表盘页 |
| `long-ppt-native` | `python-pptx` 原生对象重建 | 架构图、附件页、框架图、能力地图 |
| `long-ppt-vba` | VBA 原生重建 | 宏自动化场景、PowerPoint 端重建 |
| `long-ppt-image` | PPT 出图与图像底板生成 | 封面、背景图、结构底板、AI 出图页 |

## 能力分层

### 1. 内容到版式

先判断：

- 这页要不要重设计
- 这页要不要保留原图
- 这页要不要做成可编辑
- 这页适不适合原生对象重建

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

