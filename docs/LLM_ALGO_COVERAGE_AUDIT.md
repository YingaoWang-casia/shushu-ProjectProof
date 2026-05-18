# LLM Algorithm Coverage Audit

目标：对“大模型算法岗”能力覆盖做逐项审查，明确 `已覆盖 / 部分覆盖 / 待补`。

## 覆盖矩阵

| 能力域 | 状态 | 主要文件 | 备注 |
| --- | --- | --- | --- |
| Transformer / LLM 原理 | 已覆盖 | `references/role-llm-algorithm.md` | 包含 attention、RoPE、Pre-LN/Post-LN、decoder-only 等追问点 |
| 训练与预训练 | 已覆盖 | `references/role-llm-algorithm.md` | 包含数据、分布式、稳定性、MoE、多模态概览 |
| 对齐（SFT/RLHF/DPO） | 已覆盖 | `references/role-llm-algorithm.md` | 覆盖方法差异、典型风险和追问点 |
| 微调（LoRA/QLoRA/PEFT） | 已覆盖 | `references/role-llm-algorithm.md` | 覆盖取舍策略与高频追问 |
| RAG 系统能力 | 已覆盖 | `references/role-llm.md`, `references/document-rag-production-gaps.md` | 召回、重排、引用、拒答、评测较完整 |
| 推理部署优化 | 已覆盖 | `references/role-llm-algorithm.md` | 覆盖 KV Cache、量化、并行、TTFT/TPOT |
| 评测体系（Evals） | 已覆盖 | `references/manual-eval-suite.md`, `references/realistic-input-output-evals.md` | 已补算法岗专项样例 |
| Agent / Tool Use | 已覆盖 | `references/role-agent.md`, `references/question-tree-playbook.md` | 工具调用、安全、状态管理、失败兜底 |
| 项目深挖防线 | 已覆盖 | `references/question-tree-playbook.md`, `references/answer-leveling-rubric.md` | 可区分“可写/不能写/补做后可写” |
| 岗位分方向准备 | 已覆盖 | `references/role-llm-algorithm.md` | 包含预训练/对齐/RAG/推理/infra 映射 |

## 本轮已补充项

1. 新增大模型算法岗专项：
   - `references/role-llm-algorithm.md`
2. 将专项接入主流程：
   - `SKILL.md` 的 `Load References`、岗位映射、JD 触发规则
3. 新增算法岗追问树节点：
   - `references/question-tree-playbook.md`
4. 新增算法岗手工评测样例：
   - `references/manual-eval-suite.md` 的 Eval K
5. 新增算法岗真实输入输出评测：
   - `references/realistic-input-output-evals.md` 的 Eval 11
6. 新增算法岗细节追问与场景题：
   - `references/role-specific-detail-drills.md`
7. 新增算法岗三档答题卡：
   - `references/llm-algorithm-answer-cards.md`

## 仍可继续增强（可选）

1. 增加“强回答模板库”：
   - 为 Top 30 高频问题补 `危险/可过/强` 三档标准答案。
2. 增加“参数级调优案例”：
   - LoRA rank、学习率、batch size 调参失败到修复的真实样例。
3. 增加“推理性能实战案例”：
   - TTFT/TPOT/吞吐/成本优化前后对比模板。
4. 增加“对齐失败案例”：
   - 过度拒答、reward hacking、安全误伤等具体诊断流程。

## 建议使用方式

如果目标岗位明确为“大模型算法岗”，建议优先读取：

1. `references/role-llm-algorithm.md`
2. `references/question-tree-playbook.md`
3. `references/manual-eval-suite.md`（含 Eval K）
4. `references/realistic-input-output-evals.md`（含 Eval 11）
