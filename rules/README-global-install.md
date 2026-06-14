# Global Cursor rules

Rules in this folder apply across projects when Cursor loads `~/.cursor/rules/`.

## Precedence (Cursor)

1. **Team Rules** — Cursor Dashboard → Team Content (org-wide; highest)
2. **Project Rules** — `<repo>/.cursor/rules/*.mdc` (committed per repo)
3. **User Rules** — Cursor Settings → Rules (personal only)

Canonical org source: [`glimpsovstar/cursor-org-rules`](https://github.com/glimpsovstar/cursor-org-rules) (local: `~/Documents/Personal/Projects/cursor-org-rules`).

## Files here

| File | Scope |
|------|--------|
| `org-superpowers-workflow.mdc` | Superpowers spec/plan/build gate |
| `org-github-sdlc.mdc` | Issue → branch → PR |
| `org-engineering-standards.mdc` | Ask, verify, minimal diffs |
| `org-commit-and-pr.mdc` | When to commit; PR shape |
| `superpowers-default.mdc` | Legacy duplicate — prefer `org-superpowers-workflow.mdc` |

## Team plan

Paste `cursor-org-rules/team-rules/*.md` into **Cursor Dashboard → Team Content** and enforce SDLC rules if desired.

## Install / refresh

```bash
cd ~/Documents/Personal/Projects/cursor-org-rules
./install.sh   # symlinks org-*.mdc here
```

If `~/.cursor/rules/` is not picked up, copy rule bodies into **Settings → Rules → User Rules**.
