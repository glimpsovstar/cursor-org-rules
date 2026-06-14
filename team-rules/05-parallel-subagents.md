# Parallel subagents (glimpsovstar)

Use multiple Cursor subagents (Task tool) in parallel when work has 2+ independent domains (explore backend + frontend, unrelated test failures, broad codebase research). Read Superpowers dispatching-parallel-agents first.

Launch parallel Task calls in one turn when safe. Each subagent gets a self-contained prompt (goal, paths, constraints, return format). Parent integrates results; one coherent PR.

Do not parallelize: shared files/state, sequential dependencies (schema before UI unless interfaces fixed), trivial one-file fixes, or racing git writes.

Types: explore (research), shell (git/CI/docker), generalPurpose (focused work), code-reviewer (post-slice review).
