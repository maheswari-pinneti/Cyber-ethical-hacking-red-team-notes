# Git Commands Cheat Sheet

> **Module:** `22-CHEAT-SHEETS`  
> **Topic:** Git Commands  
> [← Back to Master Index](../README.md)

---

## 1. Repository Setup & Configuration
```bash
git init                              # Initialize a new local Git repository
git clone <url>                       # Clone a remote repository to local machine
git config --global user.name "Name"  # Configure commit author name
git config --global user.email "mail" # Configure commit author email
git status                            # Inspect state of working tree and staged files
```

## 2. Staging & Committing
```bash
git add <filename>                    # Stage single file for commit
git add .                             # Stage all changes in current directory
git commit -m "Commit message"        # Commit staged files with descriptive message
git commit --amend                    # Amend last commit with newly staged changes
git diff                              # View unstaged changes in working tree
git diff --staged                     # View staged changes waiting to be committed
```

## 3. Branching & Merging
```bash
git branch                            # List local branches
git branch <branch-name>              # Create a new branch
git checkout <branch-name>            # Switch to specified branch
git checkout -b <new-branch>          # Create and switch to new branch in one step
git merge <source-branch>             # Merge source branch into current active branch
git branch -d <branch-name>           # Delete local branch
```

## 4. Remote Operations
```bash
git remote -v                         # List configured remote repositories
git remote add origin <url>           # Link local repo to remote URL
git fetch origin                      # Fetch latest commits from remote without merging
git pull origin main                  # Fetch and merge remote changes into current branch
git push origin <branch-name>         # Push local commits to remote branch
```

## 5. Undoing & Security Cleanups
```bash
git restore <filename>                # Discard unstaged changes to a file
git restore --staged <filename>       # Unstage file while keeping local modifications
git log --oneline --graph -n 10       # Compact history log with visual branch graphs
git log -S "API_KEY"                  # Search entire commit history for leaked secrets
```
