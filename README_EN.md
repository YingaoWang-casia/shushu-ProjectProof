# ProjectProof for Codex

Turn real but under-described internships or projects into credible, interview-ready narratives for big-tech roles.

## What It Is

This repository provides a **Codex Skill** focused on helping candidates make small-company internships look less like toy demos while staying truthful and evidence-bound.

It focuses on:

- JD-to-resume mapping
- truth-bound claim boundaries
- evidence-based resume rewriting
- production-gap diagnosis for small-company demos
- interviewer-style deep-dive question trees
- SP/SSP-oriented scoring and upgrade plans

For LLM algorithm interviews, it also includes focused coverage for:

- Transformer and LLM fundamentals
- training/fine-tuning/alignment boundaries
- LoRA/QLoRA decision patterns
- RAG + eval + inference optimization interview drills

It is **not** a fake-experience generator.

## Who It Helps

- Students or interns with real work experience that sounds “too toy-like”
- Candidates preparing for AI/Agent/RAG/backend/frontend/data/algorithm interviews
- People who need stronger project storytelling without exaggeration

## Core Principle

Strong claims must match real evidence.

No fabricated:

- launch status
- user scale
- metric gains
- personal ownership scope

## Quick Start

Copy the skill directory into your Codex skills path:

```bash
cp -R skills/bigtech-interview-project-upgrader ~/.codex/skills/
```

Then prompt your assistant with:

```text
Use bigtech-interview-project-upgrader.

Target role/JD:
...

Current resume project bullet:
...

What I actually did:
...
```

## Repo Layout

```text
skills/bigtech-interview-project-upgrader/
├── SKILL.md
├── agents/openai.yaml
└── references/
```

Extra launch materials:

- `docs/demo-output.md`
- `docs/mock-interview-transcript.md`
- `docs/FAQ.md`
- `docs/RELEASE_CHECKLIST.md`
- `docs/LLM_ALGO_COVERAGE_AUDIT.md`
- `CONTRIBUTING.md`

## Evaluation Assets

- `references/realistic-input-output-evals.md`
- `references/manual-eval-suite.md`

These are intended for manual regression checks after major prompt/rule updates.

## License

Apache-2.0
