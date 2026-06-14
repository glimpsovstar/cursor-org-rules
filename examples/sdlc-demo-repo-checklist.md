# SDLC demo repository checklist

Use this pattern for repos that demonstrate Cursor + rules + GitHub SDLC (e.g. `hashicorp-vault-clm-discovery`).

## Required repo artifacts

| Artifact | Purpose |
|----------|---------|
| `CONTRIBUTING.md` | Human-readable SDLC steps |
| `.github/ISSUE_TEMPLATE/*` | Structured issues (acceptance criteria, test plan, spec link) |
| `.github/pull_request_template.md` | Summary + test plan + `Fixes #N` |
| `docs/superpowers/specs/` | Superpowers creative gate |
| `docs/superpowers/plans/` | Multi-step implementation plans |
| `docs/demo-flow.md` | Operator/demo runbook |
| `.prompts-history.md` | Cursor prompt → artifact narrative for presentations |
| `.cursor/rules/sdlc-demo.mdc` | Tells agent this repo always uses issue → spec → PR |
| `.cursor/rules/require-tests.mdc` | Stack-specific verify commands |
| `.cursor/rules/require-docs.mdc` | Which docs to update |
| `.github/workflows/ci.yml` | Automated verification |

## Org layer (cursor-org-rules)

- `org-superpowers-workflow.mdc`
- `org-github-sdlc.mdc`
- `org-engineering-standards.mdc`
- `org-commit-and-pr.mdc`
- `org-parallel-subagents.mdc`
- `team-rules/*.md` → Cursor Dashboard Team Content

## Demo script (5 min)

1. Show Cursor **Rules** (org + project)
2. Open GitHub **Issue #1** → linked **spec** in repo
3. Show **feature branch** + commits
4. Open **PR** with test plan checked
5. Run `docs/demo-flow.md` — Docker + scan + inventory

## Optional enhancements

- GitHub labels: `feature`, `bug`, `demo`, `platform`
- Branch protection on `main` requiring CI + PR review
- `CODEOWNERS` for `.cursor/rules/` and `docs/superpowers/`
- Link PR template to `.prompts-history.md` for AI-assisted demos
