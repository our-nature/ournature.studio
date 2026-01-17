---
description: Create a commit, push to a fresh feature branch, and open a PR
allowed-tools: Bash(git:*), Bash(gh:*), Bash(make:*)
---

# commit-push-pr

Create a commit, push to a fresh feature branch, and open a PR.

## Instructions

1. **Check current branch status:**
    - Run `git status` to see changes
    - Run `git branch --show-current` to get current branch

2. **Ensure fresh feature branch off main:**
    - If on `main`, create a new branch: `git checkout -b <branch-name>` (derive name from changes)
    - If on a feature branch with unpushed commits, use it
    - If branch already has a PR, ask user what to do

3. **Run CI checks before committing:**
    - Run `make ci` to validate
    - If checks fail, stop and report errors

4. **Create commit:**
    - Stage all changes: `git add -A`
    - Create commit with descriptive message summarizing changes
    - Use conventional commit format (feat:, fix:, docs:, chore:, etc.)

5. **Push branch:**
    - Push with upstream tracking: `git push -u origin <branch-name>`

6. **Create PR:**
    - Use `gh pr create --fill` to create PR with auto-filled title/body
    - Or use `gh pr create --title "..." --body "..."` for custom message
    - Report the PR URL to user

## Branch Naming

Use kebab-case, e.g.:

- `feat/add-about-overlay`
- `fix/title-animation`
- `docs/update-readme`
