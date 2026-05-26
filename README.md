<div align="center">

# 🚀 ProjectProof for Codex

**项目证据官：把真实的小厂项目，打磨成能投、能讲、能抗追问的大厂面试材料。**

面向 AI / Agent / RAG / 算法 / 数据 / 前后端实习项目的 Codex Skill。  
它不负责编造经历，而是帮助你把真实项目放回证据、边界、工程闭环和面试追问里。

[![License](https://img.shields.io/badge/license-Apache--2.0-blue)](LICENSE)
![Type](https://img.shields.io/badge/type-Codex%20Skill-111827)
![Language](https://img.shields.io/badge/language-%E4%B8%AD%E6%96%87-green)
![Method](https://img.shields.io/badge/method-evidence--bound-orange)
![Status](https://img.shields.io/badge/status-active-success)

语言版本：[中文](README.md) | [English](README_EN.md)

[新手入口](START_HERE.md) · [快速开始](#quick-start) · [为什么需要它](#why-projectproof) · [安装](#installation) · [使用方式](#usage) · [输出内容](#outputs) · [Before / After](#before-after) · [English](README_EN.md)

</div>

---

<a id="quick-start"></a>

## 🚀 快速开始

推荐直接运行安装脚本：

```bash
curl -fsSL https://raw.githubusercontent.com/YingaoWang-casia/shushu-ProjectProof/main/install.sh | bash
```

安装后检查 Skill 是否放到了正确位置：

```bash
ls ~/.codex/skills/bigtech-interview-project-upgrader/SKILL.md
```

如果能看到 `SKILL.md`，重启 Codex 或开启新会话后，在 Codex 中输入：

```text
使用 ProjectProof for Codex。
请先不要润色，先做真实性边界、Evidence Contract、Production Gap 和 SP/SSP 评分。

目标岗位/JD：
...

我的简历原文：
...

项目真实情况：
...
```

你会得到一套围绕项目真实性、证据链、简历表达和面试追问的分析结果。

---

## 🧭 30 秒了解

| 问题 | 回答 |
| --- | --- |
| ProjectProof 是什么？ | 一个用于 Codex 的项目面试与简历诊断 Skill。 |
| 它解决什么问题？ | 小厂项目、内部工具、Agent/RAG demo、算法实验、数据清洗经历写出来像 toy demo，面试中经不起追问。 |
| 它的核心方法是什么？ | Truth Boundary、Evidence Contract、Production Gap、Question Tree、SP/SSP Scorecard。 |
| 它最终产出什么？ | 简历 bullet 三档版本、面试追问树、回答防线、项目口述稿、补证据计划。 |
| 它不做什么？ | 不虚构上线、指标、用户规模、个人贡献，也不把 demo 包装成生产系统。 |

> ⚠️ ProjectProof 只升级真实经历的表达质量和证据链，不鼓励也不支持编造项目经历。

---

<a id="why-projectproof"></a>

## ❓ 为什么需要它

很多同学不是没有项目，而是项目一写进简历，就变成几句很难解释清楚的泛化描述：

```text
参与公司 Agent 项目，负责 prompt 优化和数据清洗。
参与知识库问答项目，负责文档向量化和 RAG 效果优化。
负责业务算法优化，提升模型效果。
```

这些经历可能都是真实的，但在大厂面试里通常会被继续追问：

| 追问方向 | 典型问题 |
| --- | --- |
| 贡献边界 | 你亲手做了什么？同事、平台、开源库分别做了什么？ |
| 技术细节 | RAG 怎么切分？Agent tool schema 怎么设计？算法 baseline 是什么？ |
| 证据口径 | 指标怎么评估？bad case 怎么归因？有没有日志、截图、实验记录？ |
| 生产差距 | 是否上线？有没有权限、监控、回滚、评估集和拒答策略？ |
| 面试防线 | 哪些表述能写，哪些只能说参与，哪些需要补证据后再写？ |

ProjectProof 想解决的不是“怎么把话写得更漂亮”，而是：

```text
让每一句项目表达，都有证据；
让每一段实习经历，都能抗追问；
让小厂项目不再像 toy demo，但仍然真实可信。
```

---

## 🧩 它是什么

ProjectProof for Codex 是一个可以在 Codex 中直接使用的 Skill。

它不是网页应用，不是简历模板，也不是经历生成器。  
它更像一个：

```text
项目面试教练 + 证据审计器 + 大厂追问模拟器
```

你可以给它：

- 目标岗位 / JD
- 当前简历项目描述
- 你真实做过的事情
- 项目当前状态
- 代码、日志、截图、指标、bad case 等已有证据
- 你担心被追问的地方

它会帮助你判断：

- 哪些内容已经做过，可以写
- 哪些只是参与过，需要降级表达
- 哪些补做后可以写得更强
- 哪些当前不能写
- 面试官可能会沿哪些方向深挖
- 简历 bullet 应该写到什么强度才安全

---

## 🚫 它不是什么

| 容易误解 | 实际定位 |
| --- | --- |
| 简历润色器 | 它会先做真实性和证据诊断，再决定是否改写。 |
| 经历生成器 | 它不会把没做过的内容写成做过。 |
| 八股题库 | 它围绕你的具体项目生成追问树，而不是随机列问题。 |
| 开源项目包装模板 | 它关注项目证据、贡献边界、工程闭环和面试可解释性。 |
| 一键变强工具 | 它会指出硬伤，并给出半天、1 天、3 天、1 周的补强路径。 |

---

## 🔁 它怎么工作

| 步骤 | 模块 | 作用 |
| --- | --- | --- |
| 1 | 输入信息 | 提供 JD、简历原文、真实经历、项目状态和已有证据。 |
| 2 | Truth Boundary | 区分做过、参与过、了解过、补做后可写、当前不能写。 |
| 3 | Evidence Contract | 给每条强表达绑定证据，例如代码、日志、截图、指标、bad case、日报或实验记录。 |
| 4 | Production Gap | 找出 toy demo 和大厂生产系统之间的工程缺口。 |
| 5 | Question Tree | 模拟真实项目深挖，生成面试官可能继续追问的问题链。 |
| 6 | SP/SSP Scorecard | 判断项目竞争力、硬伤和补强优先级。 |
| 7 | 输出结果 | 生成简历 bullet、面试回答、防线说明、口述稿和补强计划。 |

一句话概括：

```text
输入真实经历 → 划清贡献边界 → 绑定证据 → 识别工程缺口 → 模拟追问 → 输出简历与面试材料
```

---

<a id="installation"></a>

## 📦 安装

### 推荐方式

```bash
curl -fsSL https://raw.githubusercontent.com/YingaoWang-casia/shushu-ProjectProof/main/install.sh | bash
```

安装后检查：

```bash
ls ~/.codex/skills/bigtech-interview-project-upgrader/SKILL.md
```

看到 `SKILL.md`，说明目录放置正确。重启 Codex 或开启新会话后即可触发。

<details>
<summary>更多安装方式</summary>

### 已经克隆仓库

```bash
bash install.sh
```

### 无 git 安装

```bash
tmp=$(mktemp -d) && \
curl -L https://github.com/YingaoWang-casia/shushu-ProjectProof/archive/refs/heads/main.tar.gz | tar -xz -C "$tmp" && \
mkdir -p ~/.codex/skills && \
cp -R "$tmp/shushu-ProjectProof-main/skills/bigtech-interview-project-upgrader" ~/.codex/skills/
```

### 手动复制

```bash
git clone https://github.com/YingaoWang-casia/shushu-ProjectProof.git
cd shushu-ProjectProof
mkdir -p ~/.codex/skills
cp -R skills/bigtech-interview-project-upgrader ~/.codex/skills/
```

### 本地开发软链接

适合需要持续修改 Skill 的情况。仓库中的改动会直接反映到 Codex skills 目录。

```bash
git clone https://github.com/YingaoWang-casia/shushu-ProjectProof.git
cd shushu-ProjectProof
mkdir -p ~/.codex/skills
ln -sfn "$(pwd)/skills/bigtech-interview-project-upgrader" ~/.codex/skills/bigtech-interview-project-upgrader
```

### 先查看脚本再安装

```bash
curl -fsSL https://raw.githubusercontent.com/YingaoWang-casia/shushu-ProjectProof/main/install.sh -o install.sh
bash install.sh
```

</details>

---

<a id="usage"></a>

## 🛠️ 使用方式

### 最小触发方式

在 Codex 中输入：

```text
使用 bigtech-interview-project-upgrader。
```

或者：

```text
使用 ProjectProof for Codex，帮我诊断这个实习项目能不能写进大厂简历。
```

### 推荐触发方式

建议一次性提供岗位、简历、真实贡献和已有证据。信息越完整，诊断越准确。

```text
使用 ProjectProof for Codex。
请先不要润色，先做真实性边界、Evidence Contract、Production Gap 和 SP/SSP 评分。

目标岗位/JD：
（粘贴 JD 或岗位方向）

我的简历原文：
（粘贴当前项目描述）

项目真实情况：
1. 我亲手做了什么：
2. 同事/平台/开源库做了什么：
3. 项目状态（上线/内部试用/demo）：
4. 我手上的证据（代码/日志/截图/指标/bad case）：
5. 我最担心被追问的点：
```

### 分阶段使用

如果项目材料还不完整，也可以分阶段使用：

| 阶段 | 可以怎么问 |
| --- | --- |
| 项目刚整理 | `先判断这个项目能不能写进简历，哪些表述风险最高。` |
| 简历已写好 | `按真实性边界和证据强度，帮我重写三版 bullet。` |
| 面试前 | `围绕这个项目生成大厂追问树，并给危险/可过/强回答。` |
| 想补强项目 | `给我半天、1 天、3 天、1 周可以补的证据和工程闭环。` |

---

<a id="outputs"></a>

## 📤 输出内容

信息足够时，ProjectProof 会输出一整套项目面试包：

| 阶段 | 输出 |
| --- | --- |
| 诊断 | JD 匹配表、真实性边界表、toy 感和漏洞诊断。 |
| 证据 | Evidence Contract、强表达风险、可写 / 降级 / 补做后可写判断。 |
| 工程 | 小厂项目 vs 大厂生产级差距、半天 / 1 天 / 3 天 / 1 周补强计划。 |
| 简历 | 保守版、标准版、偏强版 bullet，并标注证据依赖。 |
| 面试 | 大厂项目追问树、危险 / 可过 / 强回答卡、2-3 分钟项目口述稿。 |
| 投递 | SP/SSP Scorecard、投递前补证据 checklist。 |

---

## ✨ 核心能力

### 1. 先诊断，再改写

普通简历工具经常直接开始润色。ProjectProof 会先判断：

- 哪些内容已经做过，可以写
- 哪些只是参与过，需要降级
- 哪些补做后可以写
- 哪些当前不能写

这能避免“简历写强了，面试一问就崩”。

### 2. Truth Boundary：先划清贡献边界

ProjectProof 会把项目经历拆成几类：

| 类型 | 含义 | 简历处理方式 |
| --- | --- | --- |
| 已亲手完成 | 你实际设计、实现、分析或交付过 | 可以写成负责或设计，但仍需证据支撑。 |
| 深度参与 | 你参与讨论、调试、评估或迭代 | 可以写参与、协助、负责局部模块。 |
| 了解但未执行 | 你知道方案，但没有实际做 | 不建议写成个人贡献，可作为面试背景说明。 |
| 补做后可写 | 现在证据不足，但短期可补齐 | 先补日志、实验、截图、文档或 bad case。 |
| 当前不能写 | 没做过、没证据、口径不清 | 不建议写入简历。 |

### 3. Evidence Contract：每句话都要有证据

ProjectProof 会把表达按证据强度分层：

| Claim 等级 | 表达强度 | 需要证据 |
| --- | --- | --- |
| C0 | 了解 / 参与 | 项目文档、口头说明、会议记录。 |
| C1 | 负责模块 | 代码、日报、截图、接口文档。 |
| C2 | 设计 / 优化 | 对比实验、bad case、设计文档、复盘记录。 |
| C3 | 结果影响 | 指标口径、日志、AB、线上记录、验收记录。 |

没有 C3 证据，就不会硬写：

```text
提升准确率 30%
支撑线上业务
显著降低延迟
主导系统落地
```

### 4. Production Gap：专门解决“小厂项目 toy 感”

很多小厂实习不是没价值，而是缺少大厂会看的工程闭环。

| 常见 toy 感 | 可补强证据 |
| --- | --- |
| 只有 demo，没有真实用户 | 项目边界、运行截图、使用路径、限制说明。 |
| 只调 API，没有工具设计 | tool schema、结构化输出校验、失败重试。 |
| 只有 Prompt，没有版本管理 | prompt 版本、bad case、回归样例。 |
| 只有 RAG 问答，没有评估集 | QA 样例集、召回评估、引用校验、拒答策略。 |
| 只有数据清洗，没有质量报告 | 字段规则、异常样本、抽样复核、质量报告。 |
| 只有功能实现，没有工程闭环 | 日志、测试、部署、监控、权限、trace_id。 |

### 5. Question Tree：不只改简历，还辅助面试

ProjectProof 会模拟真实大厂面试的追问方式：

```text
你说做了 RAG，文档怎么切？
chunk 是否保留 page / section / table_id？
只用向量召回，数字和条款召回差怎么办？
rerank 前后怎么评估？
引用会不会被模型编造？
没有答案时怎么拒答？
```

每个关键问题会给三档回答：

| 回答类型 | 说明 |
| --- | --- |
| 危险回答 | 容易被继续追问穿。 |
| 可过回答 | 基本安全，能解释主要边界。 |
| 强回答 | 更接近大厂候选人的项目表达。 |

### 6. SP/SSP Scorecard：判断项目竞争力

ProjectProof 会从岗位相关性、贡献清晰度、技术深度、工程闭环、证据强度、面试可解释性等维度给出判断。

| 维度 | 关注点 |
| --- | --- |
| 岗位相关性 | 项目是否能支撑目标 JD 的核心要求。 |
| 技术深度 | 是否有方案选择、取舍、优化和边界。 |
| 贡献清晰度 | 是否能区分个人贡献和团队贡献。 |
| 证据强度 | 是否有代码、日志、实验、截图、指标或 bad case。 |
| 工程闭环 | 是否有测试、部署、监控、权限、回滚或评估机制。 |
| 面试稳定性 | 是否能经受连续追问而不露出矛盾。 |

---

## 🎯 支持的项目类型

ProjectProof 适合处理以下类型的实习或项目经历：

| 类型 | 常见问题 | 可优化方向 |
| --- | --- | --- |
| Agent 项目 | 只写 prompt 优化，缺少工具链和执行闭环 | tool schema、调用日志、结构化校验、失败重试、trace。 |
| RAG 项目 | 只写向量化和问答，缺少评估和引用机制 | chunk 策略、metadata、召回评估、rerank、拒答。 |
| 数据清洗 | 只写处理数据，缺少质量标准 | 字段规则、异常样本、抽样复核、质量报告。 |
| 算法实验 | 只写提升效果，缺少 baseline 和口径 | 指标定义、对比实验、错误分析、消融。 |
| 前后端项目 | 只写实现功能，缺少工程深度 | 接口设计、鉴权、日志、测试、部署、性能优化。 |
| 内部工具 | 只写辅助业务，缺少使用边界 | 用户路径、输入输出、失败场景、验收标准。 |

---

## 🧠 LLM 算法岗覆盖

如果目标是 LLM / 大模型算法岗，它也覆盖：

- Transformer / Self-Attention / RoPE / Decoder-only
- 预训练、数据清洗、Scaling、分布式训练
- SFT / RLHF / DPO / 对齐
- LoRA / QLoRA / PEFT
- RAG / Agent / Tool Use
- Evals / hallucination / bad case
- 推理优化：KV Cache、量化、TTFT、TPOT、延迟与成本

参考文件：

- `skills/bigtech-interview-project-upgrader/references/role-llm-algorithm.md`
- `skills/bigtech-interview-project-upgrader/references/llm-algorithm-answer-cards.md`
- `docs/LLM_ALGO_COVERAGE_AUDIT.md`

---

## 👥 适合谁

| 适合 | 不适合 |
| --- | --- |
| 小厂 AI / Agent / RAG / 算法 / 数据实习生 | 想一键编造项目经历的人。 |
| 项目真实，但写出来像 toy demo 的同学 | 想把 demo 写成生产系统的人。 |
| 做过 Prompt、RAG、数据清洗、内部工具，但不知道怎么讲工程深度的人 | 想虚构指标、用户规模、上线效果的人。 |
| 想准备大厂项目深挖、八股转场和高压追问的人 | 完全不愿意补证据和练项目追问的人。 |
| 希望把真实经历讲清楚、讲深、讲稳的人 | 只想套模板、不想解释真实细节的人。 |

---

<a id="before-after"></a>

## 🔎 Before / After

<details open>
<summary>Agent 项目</summary>

原始写法：

```text
参与公司智能体项目，负责 prompt 优化和数据清洗。
```

问题：

- “参与”边界不清，不知道具体做了什么。
- “prompt 优化”没有说明优化对象、方法和证据。
- “数据清洗”没有说明清洗规则、质量标准或产出。

安全改写：

```text
参与内部业务 Agent 原型开发，负责历史问答样例整理、Prompt 模板维护和输出 bad case 分析；针对模型幻觉、格式不一致和字段缺失等问题梳理规则校验、失败重试和人工复核方案，为后续工程化改造提供依据。
```

补证据后可升级：

```text
参与内部业务 Agent 工具工程化改造，设计工具调用 schema、结构化输出校验、trace_id 日志和 bad case 回归机制；基于任务样例集统计工具调用成功率、人工复核通过率和节点延迟，提升问题定位和迭代效率。
```

</details>

<details>
<summary>RAG 项目</summary>

原始写法：

```text
参与知识库问答项目，负责文档向量化和 RAG 效果优化。
```

问题：

- “文档向量化”容易被理解为只调用 embedding API。
- “RAG 效果优化”没有说明优化指标和评估集。
- 没有体现引用、拒答、表格、跨页上下文等真实问题。

安全改写：

```text
参与内部文档 RAG 工具开发，负责文档预处理、chunk 策略和问答样例分析；针对表格召回不准、跨页上下文缺失、页眉页脚污染和无依据回答等问题整理 bad case，并补充 metadata、引用校验和拒答策略设计。
```

补证据后可升级：

```text
参与内部文档 RAG 链路优化，设计包含 page、section、table_id 的 chunk metadata，并基于 QA 样例集对召回命中率、引用准确性和拒答样例进行评估；通过 bad case 回归定位表格、数字和跨页上下文问题，沉淀评估记录和修复清单。
```

</details>

<details>
<summary>数据清洗 / 算法实习</summary>

原始写法：

```text
负责业务算法优化，提升模型效果。
```

问题：

- “算法优化”范围太大，容易被追问具体模型和训练细节。
- “提升模型效果”没有指标口径和实验记录。
- 如果实际做的是数据处理，应避免写成模型训练或算法主导。

安全改写：

```text
负责业务数据到可评估数据集的处理流程，设计字段标准化、缺失/重复/异常样本处理和抽样复核规则；输出数据质量报告和错误样例，为后续模型训练与指标评估提供可信数据基础。
```

补证据后可升级：

```text
负责业务样本清洗与评估集构建，制定字段标准化、异常样本过滤、重复样本合并和抽样复核规则；基于清洗前后样本分布、缺失率和错误类型输出数据质量报告，并沉淀可复用的数据处理脚本和 bad case 集合。
```

</details>

---

## 📚 示例与文档

| 类型 | 文件 |
| --- | --- |
| 输入样例 | `examples/agent-rag-input.md` |
| 输入样例 | `examples/data-cleaning-internship-input.md` |
| 输入样例 | `examples/frontend-backend-input.md` |
| 完整输出 | `docs/demo-output.md` |
| 模拟面试 | `docs/mock-interview-transcript.md` |
| 常见问题 | `docs/FAQ.md` |
| LLM 算法覆盖 | `docs/LLM_ALGO_COVERAGE_AUDIT.md` |
| 开源自评 | `docs/OPEN_SOURCE_SCORECARD.md` |
| 发布检查 | `docs/RELEASE_CHECKLIST.md` |

---

## 🗂️ 目录结构

```text
.
├── README.md
├── README_EN.md
├── install.sh
├── CHANGELOG.md
├── CONTRIBUTING.md
├── docs/
├── examples/
└── skills/
    └── bigtech-interview-project-upgrader/
        ├── SKILL.md
        ├── agents/
        │   └── openai.yaml
        └── references/
```

---

## 🧱 项目原则

```text
不虚构公司规模
不虚构上线状态
不虚构指标
不虚构个人贡献
不把接 API 写成训练模型
不把 demo 写成生产系统
```

ProjectProof 的目标不是把项目“包装得更大”，而是把真实项目讲得更清楚、更稳定、更能经受追问。

---

## 🗺️ Roadmap

- [ ] 增加更多真实 before / after 脱敏案例
- [ ] 增加更多岗位专项追问分支
- [ ] 增加英文简历输出规则
- [ ] 增加自动化 markdown/link 检查
- [ ] 扩充大模型算法岗 30 题强回答卡
- [ ] 增加 Agent / RAG / 数据清洗专项 evidence checklist

---

## 🤝 贡献

欢迎贡献真实但脱敏的案例、追问分支和评测样例。  
请先阅读 `CONTRIBUTING.md`。

适合贡献的内容包括：

- 脱敏后的项目 before / after 案例
- 面试官常见追问路径
- RAG / Agent / 算法 / 数据项目的 evidence checklist
- 不同岗位方向的简历表达边界
- README、文档、安装脚本和示例的改进

---

## InterviewProof-RAG 桥接

ProjectProof 可以作为 InterviewProof-RAG 之后的项目补强阶段使用。

这两个项目是兄弟项目，不是父子依赖。你可以单独使用任意一个，也可以把它们组合成一套完整的面试准备流程。

相关仓库：

- ProjectProof: [YingaoWang-casia/shushu-ProjectProof](https://github.com/YingaoWang-casia/shushu-ProjectProof)
- InterviewProof-RAG: [YingaoWang-casia/shushu-InterviewProof-RAG](https://github.com/YingaoWang-casia/shushu-InterviewProof-RAG)

推荐分工：

```text
InterviewProof-RAG = 检索有来源依据的面试问题，并对项目进行压力测试
ProjectProof = 把暴露出来的缺口转成 Truth Boundary、Evidence Contract、简历表达决策和补证据计划
```

桥接输入文件：

```text
reports/projectproof_input.md
reports/interview_review_report.md
reports/mock_session.jsonl
```

使用 InterviewProof-RAG 生成的桥接报告时，可以这样让 Codex 接着处理：

```text
使用 ProjectProof。
读取 reports/projectproof_input.md。
请先做 Truth Boundary、Evidence Contract、Production Gap 和 SP/SSP Scorecard。
不要先润色简历。
缺少证据的 claim 必须降级。
```

---

## ⭐ 支持项目

如果 ProjectProof 对你有帮助，欢迎给这个项目一个 Star ✨

---

## 📄 License

Apache-2.0
