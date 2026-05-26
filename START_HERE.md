# Start Here: ProjectProof

> 中文 | [English README](README_EN.md)

ProjectProof 是一个 Codex Skill，用来把你的真实项目讲清楚、补证据、降级危险表达，并准备面试追问防线。

如果你第一次使用，不要先让它“润色简历”。正确入口是：

```text
使用 ProjectProof。
我会给你一个项目经历，请先做 Truth Boundary、Evidence Contract、Production Gap 和 SP/SSP Scorecard。
不要直接润色简历。
```

## 它解决什么问题

ProjectProof 不负责帮你编项目，也不负责让项目听起来更大。它负责回答：

- 这个项目哪些内容能写？
- 哪些 claim 没证据，必须降级？
- 缺哪些代码、日志、指标、bad case、部署说明？
- 面试官可能会怎么追？
- 你应该怎么把真实项目讲得稳？

## 单独使用 ProjectProof

适合你已经有一个项目，但不知道能不能写进简历时：

```text
使用 ProjectProof。
下面是我的项目经历：
...
请先诊断真实性边界和证据缺口，再决定哪些表达能写。
```

## 和 InterviewProof-RAG 一起使用

两个项目是兄弟项目，不是父子依赖。

- InterviewProof-RAG: [YingaoWang-casia/shushu-InterviewProof-RAG](https://github.com/YingaoWang-casia/shushu-InterviewProof-RAG)
- ProjectProof: [YingaoWang-casia/shushu-ProjectProof](https://github.com/YingaoWang-casia/shushu-ProjectProof)

组合使用时：

```text
InterviewProof-RAG 用真实面经压测你的项目
-> 生成 reports/projectproof_input.md
-> ProjectProof 读取报告
-> 输出证据补强、简历表达和回答防线
```

给 Codex 的指令：

```text
使用 ProjectProof。
读取 reports/projectproof_input.md。
请先做 Truth Boundary、Evidence Contract、Production Gap 和 SP/SSP Scorecard。
不要直接润色简历。
没有证据的 claim 必须降级。
```

## 最小输出目标

一次完整 ProjectProof 诊断至少应该输出：

- Truth Boundary
- Evidence Contract
- Production Gap
- SP/SSP Scorecard
- 危险简历 claim
- 需要补的证据
- 三档简历 bullet
- 2-3 分钟项目叙事
- 面试追问防线

