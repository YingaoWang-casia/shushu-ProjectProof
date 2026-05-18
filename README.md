# ProjectProof for Codex 🚀

> 中文名：**项目证据官**  
> 把真实但“不够高级”的小厂实习 / AI 项目 / RAG / Agent / 算法经历，打磨成能投、能讲、能抗追问的大厂面试项目材料。

![License](https://img.shields.io/badge/license-Apache--2.0-blue)
![Type](https://img.shields.io/badge/type-Codex%20Skill-111827)
![Language](https://img.shields.io/badge/language-%E4%B8%AD%E6%96%87-green)
![Method](https://img.shields.io/badge/method-evidence--bound-orange)

English summary: `README_EN.md`

## 为什么叫 ProjectProof

很多同学不是没有项目，而是项目讲出来像这样：

```text
参与公司 Agent 项目，负责 prompt 优化和数据清洗。
参与知识库问答项目，负责文档向量化和 RAG 效果优化。
负责业务算法优化，提升模型效果。
```

这些经历可能都是真实的，但大厂面试官一追问就容易露出问题：

- 这是不是只是调了一个 API？
- RAG 效果怎么评估？
- 准确率提升的口径是什么？
- 你到底做了什么，同事/平台做了什么？
- 项目上线了吗？没上线为什么写业务价值？
- 文档里的表格、跨页、引用、权限怎么处理？

**ProjectProof** 想解决的不是“怎么把话写得更漂亮”，而是：

```text
让每一句项目表达，都有证据；
让每一段实习经历，都能抗追问；
让小厂项目看起来不再像 toy demo，但仍然真实可信。
```

## 它是什么 😊

ProjectProof for Codex 是一个 **可以在 Codex 中直接使用的 Skill**。

它不是网页应用，不是简历模板，也不是经历生成器。  
它更像一个“项目面试教练 + 证据审计器 + 大厂追问模拟器”。

你给它：

- 目标岗位 / JD
- 当前简历项目描述
- 你真实做过的事情
- 你已有的证据，比如代码、日志、截图、指标、bad case

它会帮你输出：

- 真实性边界
- JD-to-Resume Mapping
- Evidence Contract
- Production Gap
- SP/SSP Scorecard
- 简历 bullet 三档版本
- 面试追问树
- 危险 / 可过 / 强回答
- 2-3 分钟项目口述稿
- 半天 / 1 天 / 3 天 / 1 周补强计划

## 核心优势 ✨

### 1. 先诊断，再改写

普通简历工具经常直接开始润色。ProjectProof 会先判断：

- 哪些内容已经做过，可以写
- 哪些只是参与过，需要降级
- 哪些补做后可以写
- 哪些当前不能写

这能避免“简历写强了，面试一问就崩”。

### 2. Evidence Contract：每句话都要有证据

ProjectProof 会把表达按证据强度分层：

| Claim 等级 | 表达强度 | 需要证据 |
| --- | --- | --- |
| C0 | 了解 / 参与 | 项目文档、口头说明 |
| C1 | 负责模块 | 代码、日报、截图、接口文档 |
| C2 | 设计 / 优化 | 对比实验、bad case、设计文档 |
| C3 | 结果影响 | 指标口径、日志、AB、线上记录 |

没有 C3 证据，就不会硬写：

```text
提升准确率 30%
支撑线上业务
显著降低延迟
主导系统落地
```

### 3. 专门解决“小厂项目 toy 感”

很多小厂实习不是没价值，而是缺少大厂会看的工程闭环。

ProjectProof 会主动识别：

- 只有 demo，没有真实用户
- 只调 API，没有工具 schema
- 只有 Prompt，没有版本管理
- 只有 RAG 问答，没有评估集
- 只有数据清洗，没有质量报告
- 只有功能实现，没有日志、测试、部署、监控、权限

然后给你可执行补强方案：

| 时间 | 可以补什么 |
| --- | --- |
| 半天 | bad case、项目边界、链路图、证据清单 |
| 1 天 | 评估集、日志字段、Prompt 版本、接口文档 |
| 3 天 | trace_id、失败重试、质量报告、简单压测 |
| 1 周 | demo、MCP/tool chain、评估看板、工程闭环 |

### 4. 不只改简历，还辅助面试

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

- 危险回答：容易被追问穿
- 可过回答：基本安全
- 强回答：更像大厂候选人的表达

### 5. 支持大模型算法岗

如果你的目标是 LLM / 大模型算法岗，它也覆盖：

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

## 适合谁

- 小厂 AI / Agent / RAG / 算法 / 数据实习生
- 项目真实，但写出来像 toy demo 的同学
- 做过 Prompt、RAG、数据清洗、内部工具，但不知道怎么讲工程深度的人
- 想准备大厂项目深挖、八股转场和高压追问的人
- 不想造假，只想把真实经历讲清讲深的人

## 不适合谁

- 想一键编造项目经历的人
- 想把 demo 写成生产系统的人
- 想虚构指标、用户规模、上线效果的人
- 完全不愿意补证据和练项目追问的人

## 如何在 Codex 中使用 🛠️

### 1. 安装 Skill

把本仓库里的 skill 目录放到 Codex skills 路径：

```bash
cp -R skills/bigtech-interview-project-upgrader ~/.codex/skills/
```

推荐保留仓库结构：

```text
repo-root/
├── README.md
├── README_EN.md
├── CHANGELOG.md
├── CONTRIBUTING.md
├── docs/
├── examples/
└── skills/bigtech-interview-project-upgrader/
```

### 2. 在 Codex 中触发

在 Codex 里直接输入：

```text
使用 bigtech-interview-project-upgrader。
```

或者：

```text
使用 ProjectProof for Codex，帮我诊断这个实习项目能不能写进大厂简历。
```

### 3. 推荐输入模板

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

### 4. 你会得到什么输出

信息足够时，ProjectProof 会输出一整套面试包：

1. JD 匹配表
2. 真实性边界表
3. Evidence Contract
4. Toy 感和漏洞诊断
5. 小厂项目 vs 大厂生产级差距
6. SP / SSP 评分卡
7. 半天 / 1 天 / 3 天 / 1 周补强计划
8. 简历 bullet 三档：保守版 / 标准版 / 偏强版
9. 大厂项目追问树
10. 危险 / 可过 / 强回答卡
11. 2-3 分钟项目口述稿
12. 投递前补证据 checklist

## Before / After

### Agent 项目

原始写法：

```text
参与公司智能体项目，负责 prompt 优化和数据清洗。
```

安全改写：

```text
参与内部业务 Agent 原型开发，负责历史问答样例整理、Prompt 模板维护和输出 bad case 分析；针对模型幻觉、格式不一致和字段缺失等问题梳理规则校验、失败重试和人工复核方案，为后续工程化改造提供依据。
```

补证据后可升级：

```text
参与内部业务 Agent 工具工程化改造，设计工具调用 schema、结构化输出校验、trace_id 日志和 bad case 回归机制；基于任务样例集统计工具调用成功率、人工复核通过率和节点延迟，提升问题定位和迭代效率。
```

### RAG 项目

原始写法：

```text
参与知识库问答项目，负责文档向量化和 RAG 效果优化。
```

安全改写：

```text
参与内部文档 RAG 工具开发，负责文档预处理、chunk 策略和问答样例分析；针对表格召回不准、跨页上下文缺失、页眉页脚污染和无依据回答等问题整理 bad case，并补充 metadata、引用校验和拒答策略设计。
```

### 数据清洗 / 算法实习

原始写法：

```text
负责业务算法优化，提升模型效果。
```

安全改写：

```text
负责业务数据到可评估数据集的处理流程，设计字段标准化、缺失/重复/异常样本处理和抽样复核规则；输出数据质量报告和错误样例，为后续模型训练与指标评估提供可信数据基础。
```

## 示例与文档

可直接复制的输入样例：

- `examples/agent-rag-input.md`
- `examples/data-cleaning-internship-input.md`
- `examples/frontend-backend-input.md`

完整效果示例：

- `docs/demo-output.md`
- `docs/mock-interview-transcript.md`
- `docs/FAQ.md`

专项说明：

- `docs/LLM_ALGO_COVERAGE_AUDIT.md`
- `docs/OPEN_SOURCE_SCORECARD.md`
- `docs/RELEASE_CHECKLIST.md`

## 项目原则

```text
不虚构公司规模
不虚构上线状态
不虚构指标
不虚构个人贡献
不把接 API 写成训练模型
不把 demo 写成生产系统
```

## Roadmap

- [ ] 增加更多真实 before / after 脱敏案例
- [ ] 增加更多岗位专项追问分支
- [ ] 增加英文简历输出规则
- [ ] 增加自动化 markdown/link 检查
- [ ] 扩充大模型算法岗 30 题强回答卡

## 贡献

欢迎贡献真实但脱敏的案例、追问分支和评测样例。  
请先阅读 `CONTRIBUTING.md`。

## 版本记录

变更历史见：`CHANGELOG.md`

## License

Apache-2.0
