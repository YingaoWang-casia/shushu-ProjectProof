# Open Source Scorecard

这个文件用于开源前自评，目标是让项目不只是“内容多”，而是具备传播、复用和贡献的闭环。

## 当前评分

综合评分：91 / 100。

## 评分拆解

| 维度 | 分数 | 判断 |
| --- | ---: | --- |
| 痛点清晰度 | 9/10 | 小厂项目升级到大厂面试材料，场景足够尖锐。 |
| 差异化 | 9/10 | Evidence Contract、Truth Boundary、SP/SSP、追问树组合比较少见。 |
| 内容完整度 | 9/10 | references 很丰富，覆盖多岗位，并已补 demo output 与 mock transcript。 |
| 可信度 | 9/10 | 有 eval 文件、不造假边界，并在 README 前置验证和占位符说明。 |
| 易用性 | 8/10 | 已补安装方式、最小输入模板和 3 个可复制样例。 |
| 开源包装 | 9/10 | 已补 CONTRIBUTING、issue templates、发布检查、示例输出和开源评分。 |
| 传播性 | 8/10 | 标题和痛点有传播潜力，最好补 GIF、真实前后对比和 Star-friendly 示例。 |
| 可维护性 | 8/10 | 文件拆分清楚，后续需要固定 eval 流程避免越写越散。 |

## 1000+ Star 风险

1. 用户第一眼不知道这是 Codex Skill、提示词包还是应用。
2. 评测材料虽然已外露，但还没有自动化脚本或 release badge。
3. 中文项目想出圈，需要更强的 before/after 和短视频/GIF 演示素材。
4. 首发传播如果只发仓库链接，不讲典型痛点，转化会偏低。
5. 模板里大量 `TODO` 虽为占位符，仍可能被少数读者误读，需要持续强化示例覆盖。

## 优先补强

1. 每次 release 前跑 manual eval，并在 release note 写明覆盖样例。
2. 增加英文 README 摘要，方便非中文用户理解项目边界。
3. 准备首发传播素材：痛点截图、before/after、3 分钟使用路径。
4. 继续补岗位专项真实追问样例，提升外部贡献者参与门槛清晰度。
5. 增加一份“常见误区 FAQ”，降低首次使用失败率。

## 发布建议

- 仓库名建议：`bigtech-interview-project-upgrader`。
- GitHub About 建议：`Evidence-bound Codex Skill for turning real small-company AI/RAG/Agent projects into credible big-tech interview narratives.`
- Topics 建议：`codex-skill`, `resume`, `interview-prep`, `rag`, `agent`, `llm`, `career`, `chinese`.
- 首条 release 建议：`v0.1.0`，说明覆盖方向、安装方式、评测样例和真实性边界。
