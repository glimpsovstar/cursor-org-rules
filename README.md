# glimpsovstar — Cursor org rules

Canonical source for **organization-wide** AI rules used across `glimpsovstar` repos.

## Where rules should live (Cursor best practice)

Cursor applies rules in **precedence order** (highest wins on conflict):

| Layer | Location | What belongs here |
|-------|----------|-------------------|
| **1. Team Rules** | [Cursor Dashboard → Team Content](https://cursor.com/dashboard) | Org SDLC, Superpowers workflow, commit/PR policy, security — **plain text**; optional **Enforce** |
| **2. Project Rules** | `<repo>/.cursor/rules/*.mdc` | Stack-specific tests, doc paths, architecture pointers — **committed to git** |
| **3. User Rules** | Cursor Settings → Rules → User Rules | Personal tone/preferences only — not team standards |

**Do not** duplicate org standards inside every repo. **Do** commit project rules so all contributors get the same context.

### This repo's layout

```
cursor-org-rules/
├── rules/              # .mdc files — copy or symlink to ~/.cursor/rules/
├── team-rules/         # Plain text — paste into Cursor Team Rules dashboard
├── install.sh          # Symlink rules/ → ~/.cursor/rules/org-*.mdc
└── README.md           # This file
```

## Install (developer machine)

```bash
git clone git@github.com:glimpsovstar/cursor-org-rules.git
cd cursor-org-rules
./install.sh
```

This symlinks `rules/org-*.mdc` into `~/.cursor/rules/` without removing your existing `superpowers-default.mdc`.

## Install (organization — Team / Enterprise)

1. Open **Cursor Dashboard → Team Content → Add Rule**
2. Paste each file from `team-rules/` as a separate rule (or one combined rule)
3. Enable **Enforce** for SDLC and security rules you want mandatory
4. Keep glob patterns empty for always-on org rules

Re-sync when `team-rules/` changes (treat like code — tag releases or announce in Slack).

**Team rules files:** `01-superpowers-workflow.md` … `05-parallel-subagents.md`

## Per-project setup

Each app repo should contain **only**:

- `require-tests.mdc` — test command + patterns for that stack
- `require-docs.mdc` — which README/docs/spec paths to update
- Optional `project-context.mdc` — pointer to `constitution.md` or architecture doc

See `examples/coffee-shot-journal/` and `examples/hashicorp-vault-clm-discovery/` in this repo.

## Related

- Superpowers plugin skills remain the workflow engine; org rules reference them, not duplicate them.
- Project `.cursor/settings.json` may enable Superpowers per repo.
