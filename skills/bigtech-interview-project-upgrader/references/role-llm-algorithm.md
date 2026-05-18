# Role: 大模型算法岗（LLM Algorithm）

适用：大模型算法实习/校招/社招，方向包括预训练、微调对齐、RAG 算法、Agent 算法、推理优化、评测体系。

## 一、岗位特点

大模型算法岗通常不只看“懂不懂 Transformer”，而是看是否能完成从模型能力到业务落地的闭环。

高频能力维度：

1. Transformer 与 LLM 基础原理。
2. 训练/预训练与分布式训练。
3. SFT、RLHF、DPO 等对齐方法。
4. LoRA/QLoRA/PEFT 微调能力。
5. RAG 与检索增强系统设计。
6. 推理部署与性能/成本优化。
7. 评测体系与 bad case 闭环。
8. 项目深挖与真实性防线。

## 二、原理必问项（Transformer / LLM）

最常见追问：

- Self-Attention、Multi-Head Attention、FFN、残差、LayerNorm。
- Q/K/V 含义，为什么除以 `sqrt(d_k)`。
- 时间/空间复杂度，为什么比 RNN 更利于并行。
- 位置编码：绝对位置、RoPE、ALiBi。
- Pre-LN vs Post-LN 稳定性。
- Decoder-only 为什么适合生成式任务。
- Causal LM / Masked LM / Seq2Seq 区别。
- Tokenizer：BPE/WordPiece/SentencePiece。
- 长上下文：RoPE 外推、KV Cache、滑动窗口注意力。

回答要求：

- 不能只背定义，要能说训练稳定性、并行性和工程成本影响。
- 至少准备 1-2 个“手推 attention 或复杂度分析”的口头版答案。

## 三、训练与预训练（偏研究/底座岗）

常见面试范围：

- 数据：清洗、去重、质量过滤、领域配比。
- 训练：next token prediction、loss 曲线与收敛判断。
- Scaling：参数、数据、算力的配平逻辑。
- 分布式：DP、TP、PP、ZeRO、FSDP。
- 稳定性：loss spike、梯度爆炸、学习率、混合精度。
- MoE：路由、负载均衡、通信开销。
- 多模态：CLIP/VLM、图文对齐、视觉 token。

典型追问：

- “7B 训练链路要考虑哪些模块？”
- “loss 突然 spike 如何排查？”
- “数据去重为什么必要？”
- “MoE 相比 dense 的收益和代价是什么？”

## 四、对齐（SFT / RLHF / DPO）

常见范围：

- SFT：指令数据构造、泛化与过拟合。
- RLHF：Reward Model、偏好数据、PPO。
- DPO：不显式训练 RM 的偏好优化。
- RLAIF：AI feedback 与人工反馈取舍。
- 安全对齐：拒答边界、越狱、helpfulness vs harmlessness。

高频追问：

- “SFT、RLHF、DPO 各解决什么问题？”
- “为什么做了 SFT 还要做偏好对齐？”
- “reward hacking 是什么，如何发现？”

回答要求：

- 说明数据噪声、奖励模型偏差、过拒答等真实问题。
- 不要把对齐回答成纯概念复述。

## 五、微调（LoRA / QLoRA / PEFT）

常见范围：

- Full fine-tuning vs LoRA 成本与效果。
- LoRA 的低秩适配原理，rank 取值权衡。
- QLoRA 的量化思路与显存收益。
- Adapter / Prompt Tuning / Instruction Tuning。

关键追问：

- “什么时候该 RAG，什么时候该微调？”
- “微调后遗忘原能力如何缓解？”

建议回答框架：

- 外部知识更新、可追溯检索、跨文档问答：优先 RAG。
- 风格、格式、任务行为模式：优先 SFT/LoRA。
- 复杂业务常见组合：RAG + 微调 + 评测闭环。

## 六、RAG（大模型应用算法高频）

必须覆盖链路：

文档解析 -> 清洗切分 -> embedding -> 向量库 -> 混合检索 -> rerank -> prompt 组装 -> 生成 -> 评测 -> 反馈闭环。

高频考点：

- chunk size / overlap。
- embedding 模型选择与评估。
- BM25 + 向量 + rerank 混合检索。
- 引用约束、拒答机制、幻觉治理。
- 指标：Recall@K、MRR、faithfulness、answer correctness。

## 七、推理部署与优化

常见考点：

- KV Cache 加速原理与显存代价。
- continuous batching / 动态 batch。
- 量化：INT8/INT4/GPTQ/AWQ。
- 并行：tensor/pipeline parallel。
- 框架：vLLM、TensorRT-LLM、TGI。
- 指标：TTFT、TPOT、吞吐、P95/P99 延迟、显存、成本。

高频追问：

- “为什么首 token 慢？”
- “如何降延迟和降成本？”
- “PagedAttention 解决什么问题？”

## 八、评测体系（Evals）

算法岗必须回答“如何证明变好”。

评测维度：

- 通用能力：MMLU、GSM8K、HumanEval（按岗位相关性讲）。
- 业务离线：任务成功率、答案正确性、引用准确率。
- 线上：满意度、转人工率、留存/点击、延迟、成本。
- 安全：越狱、毒性、隐私泄露。
- Agent：工具调用成功率、任务完成率。

关键点：

- 不能只看主观体验。
- 必须有固定评测集 + 自动评测 + 人评 + bad case 回归。

## 九、Agent / Tool Use

常见追问：

- Agent 与普通 chatbot 区别。
- ReAct / Plan-and-Execute 逻辑。
- 工具调用失败重试与降级。
- prompt injection 与越权防护。
- 多轮上下文压缩与状态管理。

## 十、项目深挖（决定面评上限）

如果写了“大模型项目”，必须能说清：

- 数据规模、来源、清洗规则。
- 模型或链路选择依据。
- 指标定义和评测口径。
- 关键 bad case 与修复策略。
- 延迟、成本、稳定性优化动作。

不能出现：

- “感觉效果更好”但无指标。
- “参与很多”但说不清个人边界。
- “上线效果显著”但无证据。

## 十一、20 个高频问题清单

1. Self-Attention 怎么计算？
2. Multi-Head 为什么有效？
3. Decoder-only 为什么主流？
4. RoPE 的作用和外推风险？
5. KV Cache 为什么能加速？
6. LoRA 的原理是什么？
7. LoRA rank 怎么选？
8. SFT/RLHF/DPO 的区别？
9. RAG 和微调怎么取舍？
10. 企业知识库问答系统如何设计？
11. RAG 幻觉来源有哪些？
12. chunk size 怎么选？
13. embedding 模型如何评估？
14. rerank 的价值是什么？
15. 如何构造大模型评测集？
16. 如何判断微调有正收益？
17. 推理延迟如何优化？
18. temperature/top-k/top-p 区别？
19. 如何防 prompt injection？
20. 你的最大 bad case 是什么，如何修复？

## 十二、项目口述模板（算法岗）

按以下顺序组织口述：

1. 背景：业务目标与约束。
2. 方案：RAG/微调/Agent/推理优化组合。
3. 数据：规模、来源、清洗与质量控制。
4. 模型：为什么选它，不选什么。
5. 链路：输入 -> 检索/推理 -> 输出 -> 后处理。
6. 评测：离线、人评、线上指标。
7. 问题：幻觉、延迟、成本、稳定性 bad case。
8. 优化：做了什么，指标变化与副作用。
9. 复盘：如果重做怎么改。

## 十三、岗位映射建议

| 方向 | 重点 |
| --- | --- |
| 预训练算法 | Transformer、数据、分布式、Scaling、MoE |
| 微调对齐 | SFT、RLHF、DPO、偏好数据、安全边界 |
| RAG 算法工程 | 检索、embedding、rerank、评测、幻觉治理 |
| Agent 算法 | 工具调用、规划、多轮状态、安全与评测 |
| 推理优化 | KV Cache、量化、并行、吞吐与延迟 |
| 多模态 LLM | CLIP/VLM、图文对齐、视觉编码与 OCR |
| 搜广推 + LLM | query 改写、排序融合、用户意图理解 |
| AI Infra | 训练框架、推理服务、GPU 与分布式系统 |

