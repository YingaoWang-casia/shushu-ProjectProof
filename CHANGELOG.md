# Changelog

All notable changes to this project will be documented in this file.

The format follows a simple Keep a Changelog style.

## [0.2.0] - 2026-05-18

### Added

- Rewritten product-focused README under the ProjectProof for Codex brand with detailed usage instructions.
- LLM algorithm role coverage:
  - `references/role-llm-algorithm.md`
  - `references/llm-algorithm-answer-cards.md`
- LLM algorithm integration updates:
  - Added to `SKILL.md` reference loading and JD trigger rules.
  - Added dedicated branch in `question-tree-playbook.md`.
  - Added Eval K in `manual-eval-suite.md`.
  - Added Eval 11 in `realistic-input-output-evals.md`.
  - Added LLM algorithm section in `role-specific-detail-drills.md`.
- Open-source support docs:
  - `docs/demo-output.md`
  - `docs/mock-interview-transcript.md`
  - `docs/FAQ.md`
  - `docs/LLM_ALGO_COVERAGE_AUDIT.md`
  - `docs/RELEASE_CHECKLIST.md`
  - `docs/OPEN_SOURCE_SCORECARD.md`
- Contributor workflow assets:
  - `CONTRIBUTING.md`
  - GitHub issue templates and PR template.

### Changed

- README updated for folder-based GitHub publishing flow.
- Added placeholder clarification for `TODO` usage in templates.
- `.gitignore` updated to exclude `*.skill.zip`.

### Removed

- Removed local `bigtech-interview-project-upgrader.skill.zip` artifact from repo root.

## [0.1.0] - 2026-05-17

### Added

- Initial skill structure:
  - `SKILL.md`
  - role-specific references
  - eval references
  - interview playbooks
