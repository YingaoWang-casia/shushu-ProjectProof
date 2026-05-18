<div align="center">

# 🚀 ProjectProof for Codex

**Project Proof Officer: turn real small-company projects into interview-ready materials that can be submitted, explained, and defended under follow-up questions.**

A Codex Skill for AI / Agent / RAG / algorithm / data / frontend / backend internship projects.  
It does not fabricate experience. It helps you put real projects back into evidence, boundaries, engineering completeness, and interview reasoning.

[![License](https://img.shields.io/badge/license-Apache--2.0-blue)](LICENSE)
![Type](https://img.shields.io/badge/type-Codex%20Skill-111827)
![Language](https://img.shields.io/badge/language-English-green)
![Method](https://img.shields.io/badge/method-evidence--bound-orange)
![Status](https://img.shields.io/badge/status-active-success)

[Quick Start](#quick-start) · [Why ProjectProof](#why-projectproof) · [Installation](#installation) · [Usage](#usage) · [Outputs](#outputs) · [Before / After](#before--after) · [中文](README.md)

</div>

---

<a id="quick-start"></a>

## 🚀 Quick Start

Install with the recommended script:

```bash
curl -fsSL https://raw.githubusercontent.com/YingaoWang-casia/shushu-ProjectProof/main/install.sh | bash
```

Check whether the Skill has been placed in the correct directory:

```bash
ls ~/.codex/skills/bigtech-interview-project-upgrader/SKILL.md
```

If `SKILL.md` exists, restart Codex or open a new session, then type:

```text
Use ProjectProof for Codex.
Do not polish the resume first. Start with Truth Boundary, Evidence Contract, Production Gap, and SP/SSP scoring.

Target role / JD:
...

My current resume description:
...

Actual project details:
...
```

ProjectProof will return a structured analysis covering project truthfulness, evidence, resume wording, and interview follow-up risks.

---

## 🧭 30-Second Overview

| Question | Answer |
| --- | --- |
| What is ProjectProof? | A Codex Skill for project interview preparation and resume diagnosis. |
| What problem does it solve? | Small-company projects, internal tools, Agent/RAG demos, algorithm experiments, and data-cleaning work often look like toy demos on resumes and fail under interview follow-ups. |
| What is the core method? | Truth Boundary, Evidence Contract, Production Gap, Question Tree, and SP/SSP Scorecard. |
| What does it produce? | Three levels of resume bullets, interview question trees, answer defenses, project pitch scripts, and evidence-improvement plans. |
| What does it not do? | It does not fabricate launches, metrics, user scale, or personal contribution, and it does not present demos as production systems. |

> ⚠️ ProjectProof improves the expression quality and evidence chain of real experience. It does not encourage or support fabricated project experience.

---

<a id="why-projectproof"></a>

## ❓ Why ProjectProof

Many candidates do have real projects, but once those projects appear on a resume, they often become vague descriptions like:

```text
Participated in the company's Agent project and was responsible for prompt optimization and data cleaning.
Participated in a knowledge-base QA project and worked on document vectorization and RAG optimization.
Optimized business algorithms and improved model performance.
```

These experiences may be real, but interviewers at stronger companies usually continue with questions like:

| Follow-up Direction | Typical Questions |
| --- | --- |
| Contribution boundary | What exactly did you do yourself? What was done by teammates, platforms, or open-source libraries? |
| Technical details | How did you chunk documents in RAG? How was the Agent tool schema designed? What was the algorithm baseline? |
| Evidence and metrics | How were metrics evaluated? How were bad cases attributed? Do you have logs, screenshots, or experiment records? |
| Production gap | Was it launched? Did it have permissions, monitoring, rollback, evaluation sets, or refusal strategies? |
| Interview defense | Which claims are safe to write, which should be downgraded, and which require more evidence first? |

ProjectProof is not about making sentences sound more impressive. It is about:

```text
Making every project claim evidence-backed;
Making every internship experience defensible under follow-up questions;
Making small-company projects look less like toy demos while staying truthful.
```

---

## 🧩 What It Is

ProjectProof for Codex is a Skill that can be used directly inside Codex.

It is not a web app, not a resume template, and not an experience generator.  
It is closer to a:

```text
project interview coach + evidence auditor + big-tech follow-up simulator
```

You can provide:

- Target role / JD
- Current resume project description
- What you actually did
- Current project status
- Existing evidence such as code, logs, screenshots, metrics, and bad cases
- The parts you are most worried about being challenged on

It helps you decide:

- What you actually did and can write
- What you only participated in and should phrase more carefully
- What can be written stronger after adding evidence
- What should not be written at the current stage
- Which directions interviewers are likely to probe
- How strong each resume bullet can safely be

---

## 🚫 What It Is Not

| Common Misunderstanding | Actual Positioning |
| --- | --- |
| A resume polishing tool | It first diagnoses truthfulness and evidence, then decides whether and how to rewrite. |
| An experience generator | It does not turn things you did not do into personal contribution. |
| A random interview-question bank | It builds follow-up trees around your specific project. |
| An open-source project packaging template | It focuses on evidence, contribution boundaries, engineering completeness, and interview explainability. |
| A one-click upgrade tool | It points out weaknesses and gives half-day, 1-day, 3-day, and 1-week improvement paths. |

---

## 🔁 How It Works

| Step | Module | Purpose |
| --- | --- | --- |
| 1 | Input Information | Provide the JD, resume text, actual experience, project status, and existing evidence. |
| 2 | Truth Boundary | Separate what you did, participated in, only understand, can write after improvement, and should not write. |
| 3 | Evidence Contract | Bind strong claims to evidence such as code, logs, screenshots, metrics, bad cases, daily notes, or experiment records. |
| 4 | Production Gap | Identify the engineering gaps between a toy demo and a production-grade project. |
| 5 | Question Tree | Simulate realistic follow-up chains that an interviewer may ask. |
| 6 | SP/SSP Scorecard | Evaluate project competitiveness, hard weaknesses, and improvement priorities. |
| 7 | Final Outputs | Generate resume bullets, interview answers, defense notes, project pitch scripts, and improvement plans. |

In one sentence:

```text
Input real experience → define contribution boundaries → bind evidence → identify engineering gaps → simulate follow-ups → produce resume and interview materials
```

---

<a id="installation"></a>

## 📦 Installation

### Recommended

```bash
curl -fsSL https://raw.githubusercontent.com/YingaoWang-casia/shushu-ProjectProof/main/install.sh | bash
```

Then check:

```bash
ls ~/.codex/skills/bigtech-interview-project-upgrader/SKILL.md
```

If `SKILL.md` is shown, the directory is correct. Restart Codex or open a new session to use the Skill.

<details>
<summary>More installation options</summary>

### If you have already cloned the repository

```bash
bash install.sh
```

### Install without git

```bash
tmp=$(mktemp -d) && \
curl -L https://github.com/YingaoWang-casia/shushu-ProjectProof/archive/refs/heads/main.tar.gz | tar -xz -C "$tmp" && \
mkdir -p ~/.codex/skills && \
cp -R "$tmp/shushu-ProjectProof-main/skills/bigtech-interview-project-upgrader" ~/.codex/skills/
```

### Manual copy

```bash
git clone https://github.com/YingaoWang-casia/shushu-ProjectProof.git
cd shushu-ProjectProof
mkdir -p ~/.codex/skills
cp -R skills/bigtech-interview-project-upgrader ~/.codex/skills/
```

### Local development symlink

Use this if you want to keep editing the Skill. Changes in the repository will be reflected directly in the Codex skills directory.

```bash
git clone https://github.com/YingaoWang-casia/shushu-ProjectProof.git
cd shushu-ProjectProof
mkdir -p ~/.codex/skills
ln -sfn "$(pwd)/skills/bigtech-interview-project-upgrader" ~/.codex/skills/bigtech-interview-project-upgrader
```

### Review the script before installing

```bash
curl -fsSL https://raw.githubusercontent.com/YingaoWang-casia/shushu-ProjectProof/main/install.sh -o install.sh
bash install.sh
```

</details>

---

<a id="usage"></a>

## 🛠️ Usage

### Minimal trigger

Type this in Codex:

```text
Use bigtech-interview-project-upgrader.
```

Or:

```text
Use ProjectProof for Codex to diagnose whether this internship project is safe to put on a big-tech resume.
```

### Recommended prompt

Provide the target role, current resume wording, real contribution, and available evidence at the same time. The more complete the input, the more accurate the diagnosis.

```text
Use ProjectProof for Codex.
Do not polish the resume first. Start with Truth Boundary, Evidence Contract, Production Gap, and SP/SSP scoring.

Target role / JD:
(paste the JD or role direction)

My current resume description:
(paste the current project description)

Actual project details:
1. What I personally did:
2. What teammates / platforms / open-source libraries did:
3. Project status: launched / internal trial / demo:
4. Evidence I have: code / logs / screenshots / metrics / bad cases:
5. The part I am most worried about being questioned on:
```

### Use by stage

If your project materials are incomplete, you can use it in stages:

| Stage | Example Prompt |
| --- | --- |
| Initial project sorting | `First judge whether this project can be written on my resume and which claims are the riskiest.` |
| Resume already written | `Rewrite three versions of my bullets based on truth boundaries and evidence strength.` |
| Before interviews | `Generate a big-tech follow-up question tree for this project and give risky / acceptable / strong answers.` |
| Project improvement | `Give me evidence and engineering-completeness improvements I can do in half a day, 1 day, 3 days, and 1 week.` |

---

<a id="outputs"></a>

## 📤 Outputs

When enough information is provided, ProjectProof returns a complete project interview package:

| Stage | Output |
| --- | --- |
| Diagnosis | JD matching table, truth-boundary table, toy-demo diagnosis, and weakness analysis. |
| Evidence | Evidence Contract, strong-claim risks, and write / downgrade / write-after-improvement decisions. |
| Engineering | Small-company project vs production-grade gap, plus half-day / 1-day / 3-day / 1-week improvement plan. |
| Resume | Conservative, standard, and stronger resume bullets, with evidence dependencies marked. |
| Interview | Big-tech question tree, risky / acceptable / strong answer cards, and a 2-3 minute project pitch. |
| Application | SP/SSP Scorecard and pre-application evidence checklist. |

---

## ✨ Core Capabilities

### 1. Diagnose first, rewrite later

Many resume tools start polishing immediately. ProjectProof first determines:

- What you have actually done and can write
- What you only participated in and should downgrade
- What can be written after adding evidence
- What should not be written at the current stage

This reduces the risk of writing a strong-looking resume that collapses under interview follow-up.

### 2. Truth Boundary: clarify contribution first

ProjectProof separates project experience into several categories:

| Type | Meaning | Resume Handling |
| --- | --- | --- |
| Personally completed | You actually designed, implemented, analyzed, or delivered it | Can be phrased as responsible for or designed, but still needs evidence. |
| Deeply involved | You joined discussions, debugging, evaluation, or iteration | Can be phrased as participated in, assisted with, or owned a submodule. |
| Understood but did not execute | You understand the approach but did not do it yourself | Should not be written as personal contribution; can be background in interviews. |
| Can write after improvement | Evidence is currently insufficient but can be added soon | Add logs, experiments, screenshots, documents, or bad cases first. |
| Should not write now | Not done, no evidence, or unclear claim boundary | Not recommended for the resume. |

### 3. Evidence Contract: every claim needs evidence

ProjectProof layers claims by evidence strength:

| Claim Level | Expression Strength | Required Evidence |
| --- | --- | --- |
| C0 | Understood / participated | Project documents, verbal context, meeting notes. |
| C1 | Owned a module | Code, daily notes, screenshots, API documents. |
| C2 | Designed / optimized | Comparison experiments, bad cases, design documents, postmortems. |
| C3 | Impacted results | Metric definitions, logs, A/B records, launch records, acceptance records. |

Without C3 evidence, it will not force claims such as:

```text
Improved accuracy by 30%
Supported online business
Significantly reduced latency
Led the system launch
```

### 4. Production Gap: reduce the toy-demo feeling

Many small-company internships have value, but lack the engineering closure that stronger companies expect.

| Common Toy-Demo Signal | Evidence to Add |
| --- | --- |
| Demo only, no real users | Project boundary, running screenshots, usage path, limitation notes. |
| API calls only, no tool design | Tool schema, structured-output validation, failure retry. |
| Prompt only, no versioning | Prompt versions, bad cases, regression examples. |
| RAG QA only, no evaluation set | QA samples, retrieval evaluation, citation validation, refusal strategy. |
| Data cleaning only, no quality report | Field rules, abnormal samples, sampling review, quality report. |
| Feature implementation only, no engineering closure | Logs, tests, deployment, monitoring, permissions, trace_id. |

### 5. Question Tree: interview support beyond resume rewriting

ProjectProof simulates realistic follow-up questions such as:

```text
You said you worked on RAG. How did you chunk the documents?
Did each chunk preserve page / section / table_id?
If you only used vector retrieval, what happened to numbers and clauses?
How did you evaluate before and after reranking?
Could the model fabricate citations?
How did the system refuse to answer when there was no evidence?
```

Each key question comes with three levels of answers:

| Answer Type | Meaning |
| --- | --- |
| Risky answer | Likely to be challenged or exposed by follow-up questions. |
| Acceptable answer | Mostly safe and explains the main boundaries. |
| Strong answer | Closer to how a strong candidate would explain the project. |

### 6. SP/SSP Scorecard: evaluate project competitiveness

ProjectProof evaluates the project from role fit, contribution clarity, technical depth, engineering completeness, evidence strength, and interview explainability.

| Dimension | Focus |
| --- | --- |
| Role fit | Whether the project supports the core requirements of the target JD. |
| Technical depth | Whether there are choices, trade-offs, optimization, and boundaries. |
| Contribution clarity | Whether personal contribution and team contribution are separated. |
| Evidence strength | Whether there is code, logs, experiments, screenshots, metrics, or bad cases. |
| Engineering completeness | Whether there are tests, deployment, monitoring, permissions, rollback, or evaluation mechanisms. |
| Interview stability | Whether the project can survive continuous follow-up questions without contradictions. |

---

## 🎯 Supported Project Types

ProjectProof is suitable for the following internship or project experiences:

| Type | Common Problem | Improvement Direction |
| --- | --- | --- |
| Agent project | Only says prompt optimization, lacks toolchain and execution closure | Tool schema, call logs, structured validation, retry, trace. |
| RAG project | Only says vectorization and QA, lacks evaluation and citation mechanism | Chunk strategy, metadata, retrieval evaluation, rerank, refusal. |
| Data cleaning | Only says processed data, lacks quality standard | Field rules, abnormal samples, sampling review, quality report. |
| Algorithm experiment | Only says improved performance, lacks baseline and metric definition | Metric definition, comparison experiment, error analysis, ablation. |
| Frontend / backend project | Only says implemented features, lacks engineering depth | API design, authentication, logs, tests, deployment, performance optimization. |
| Internal tool | Only says supported business, lacks usage boundary | User path, inputs and outputs, failure scenarios, acceptance criteria. |

---

## 🧠 LLM Algorithm Role Coverage

If your target role is LLM / large-model algorithm engineering, ProjectProof also covers:

- Transformer / Self-Attention / RoPE / Decoder-only
- Pretraining, data cleaning, scaling, distributed training
- SFT / RLHF / DPO / alignment
- LoRA / QLoRA / PEFT
- RAG / Agent / Tool Use
- Evals / hallucination / bad cases
- Inference optimization: KV Cache, quantization, TTFT, TPOT, latency, and cost

Reference files:

- `skills/bigtech-interview-project-upgrader/references/role-llm-algorithm.md`
- `skills/bigtech-interview-project-upgrader/references/llm-algorithm-answer-cards.md`
- `docs/LLM_ALGO_COVERAGE_AUDIT.md`

---

## 👥 Who It Is For

| Good Fit | Not a Good Fit |
| --- | --- |
| Small-company AI / Agent / RAG / algorithm / data interns | People who want to fabricate project experience. |
| Candidates with real projects that look like toy demos on resumes | People who want to present demos as production systems. |
| People who worked on prompts, RAG, data cleaning, or internal tools but do not know how to explain engineering depth | People who want to invent metrics, user scale, or launch impact. |
| Candidates preparing for deep project follow-ups, knowledge transitions, and high-pressure interviews | People unwilling to add evidence or practice project follow-ups. |
| People who want to explain real experience clearly, deeply, and consistently | People who only want templates without explaining real details. |

---

<a id="before--after"></a>

## 🔎 Before / After

<details open>
<summary>Agent Project</summary>

Original:

```text
Participated in the company's intelligent agent project and was responsible for prompt optimization and data cleaning.
```

Problems:

- "Participated" does not define the contribution boundary.
- "Prompt optimization" does not explain the target, method, or evidence.
- "Data cleaning" does not describe cleaning rules, quality standards, or deliverables.

Safe rewrite:

```text
Participated in the development of an internal business Agent prototype, responsible for organizing historical QA samples, maintaining prompt templates, and analyzing output bad cases. Summarized validation rules, failure-retry strategies, and human-review plans for hallucination, inconsistent formatting, and missing-field issues, providing evidence for later engineering improvements.
```

Can be upgraded after adding evidence:

```text
Participated in the engineering improvement of an internal business Agent, designing tool-call schemas, structured-output validation, trace_id logging, and bad-case regression mechanisms. Measured tool-call success rate, human-review pass rate, and node latency on task samples to improve issue localization and iteration efficiency.
```

</details>

<details>
<summary>RAG Project</summary>

Original:

```text
Participated in a knowledge-base QA project and was responsible for document vectorization and RAG optimization.
```

Problems:

- "Document vectorization" can sound like simply calling an embedding API.
- "RAG optimization" does not define metrics or evaluation sets.
- It does not show real issues such as citations, refusal, tables, or cross-page context.

Safe rewrite:

```text
Participated in the development of an internal-document RAG tool, responsible for document preprocessing, chunking strategy, and QA sample analysis. Organized bad cases related to inaccurate table retrieval, missing cross-page context, header/footer noise, and unsupported answers, and proposed metadata enrichment, citation validation, and refusal-strategy improvements.
```

Can be upgraded after adding evidence:

```text
Participated in optimizing the internal-document RAG pipeline, designing chunk metadata including page, section, and table_id, and evaluating retrieval hit rate, citation accuracy, and refusal cases on a QA sample set. Used bad-case regression to locate table, numeric, and cross-page context issues, producing evaluation records and a repair checklist.
```

</details>

<details>
<summary>Data Cleaning / Algorithm Internship</summary>

Original:

```text
Responsible for business algorithm optimization and improved model performance.
```

Problems:

- "Algorithm optimization" is too broad and invites questions about model and training details.
- "Improved model performance" lacks metric definition and experiment records.
- If the actual work was data processing, it should not be described as leading model training or algorithm design.

Safe rewrite:

```text
Responsible for the pipeline from business data to evaluable datasets, designing rules for field standardization, missing / duplicate / abnormal sample handling, and sampling review. Produced data-quality reports and error examples to provide reliable data foundations for later model training and metric evaluation.
```

Can be upgraded after adding evidence:

```text
Responsible for business-sample cleaning and evaluation-set construction, defining rules for field standardization, abnormal-sample filtering, duplicate merging, and sampling review. Produced data-quality reports based on pre- and post-cleaning sample distribution, missing rate, and error types, and maintained reusable data-processing scripts and bad-case collections.
```

</details>

---

## 📚 Examples and Docs

| Type | File |
| --- | --- |
| Input example | `examples/agent-rag-input.md` |
| Input example | `examples/data-cleaning-internship-input.md` |
| Input example | `examples/frontend-backend-input.md` |
| Full output | `docs/demo-output.md` |
| Mock interview | `docs/mock-interview-transcript.md` |
| FAQ | `docs/FAQ.md` |
| LLM algorithm coverage | `docs/LLM_ALGO_COVERAGE_AUDIT.md` |
| Open-source self-assessment | `docs/OPEN_SOURCE_SCORECARD.md` |
| Release checklist | `docs/RELEASE_CHECKLIST.md` |

---

## 🗂️ Project Structure

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

## 🧱 Project Principles

```text
Do not fabricate company scale
Do not fabricate launch status
Do not fabricate metrics
Do not fabricate personal contribution
Do not describe API integration as model training
Do not describe a demo as a production system
```

ProjectProof is not meant to make projects look bigger than they are.  
It is meant to make real projects clearer, steadier, and more defensible under follow-up questions.

---

## 🗺️ Roadmap

- [ ] Add more real but anonymized before / after cases
- [ ] Add more role-specific follow-up branches
- [ ] Add English resume-output rules
- [ ] Add automated Markdown / link checks
- [ ] Expand 30 strong answer cards for LLM algorithm roles
- [ ] Add specialized evidence checklists for Agent / RAG / data-cleaning projects

---

## 🤝 Contributing

Contributions of real but anonymized cases, follow-up branches, and evaluation examples are welcome.  
Please read `CONTRIBUTING.md` first.

Useful contributions include:

- Anonymized project before / after examples
- Common interviewer follow-up paths
- Evidence checklists for RAG / Agent / algorithm / data projects
- Resume-expression boundaries for different role directions
- Improvements to README, docs, installation scripts, and examples

---

## 📄 License

Apache-2.0

---

## ⭐ Support

If ProjectProof is helpful to you, please consider giving this project a Star ✨
