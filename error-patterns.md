# Error Pattern Library

Tracks every error encountered and the pattern to recognize it.

## Stats
- **Total Errors Encountered:** 1
- **Patterns Learned:** 1
- **Last Updated:** 2025-10-29

---

## Git Errors

**Error:** `remote: error: GH007: Your push would publish a private email address`

**Command That Caused It:** `git push`

**Pattern Recognition:** 
- Error message contains "GH007" or "publish a private email address"
- Happens on first push after configuring Git
- Indicates email privacy settings conflict

**Root Cause:** 
Git was configured with real email (Gm*******@gmail.com), but GitHub has privacy protection enabled to prevent exposing personal email in commit history

**Fix Command:**
```bash
git config --global user.email "GmanF10@users.noreply.github.com"
git commit --amend --reset-author --no-edit
git push
```

**Prevention:** Always use GitHub's noreply email format (username@users.noreply.github.com) when configuring Git for public repositories

**First Encountered:** 2025-10-29  
**Times Hit:** 1

**Resolution:** ✅ Fixed independently by updating email config and amending commit

---

## Terminal Errors

*No Terminal errors encountered yet*

---

## Command-Specific Errors

### Minor Pattern: Premature Push

**Situation:** Tried `git push` before running `git commit`

**What Happened:** Git said "Everything up-to-date" (no error, just nothing to push)

**Pattern Recognition:** When you add files but forget to commit, push has nothing to upload

**Learning:** The order matters - always add → commit → push

**First Encountered:** 2025-10-29

---

## Common Error Categories

### Not Yet Encountered
- Missing arguments
- Wrong directory
- File not found
- Permission errors
- Syntax errors
- Git merge conflicts
- Uninitialized repository

*Categories will populate as errors are encountered*

---

## Error Stats by Category

**Git Errors:** 1  
**Terminal Errors:** 0  
**Command Errors:** 0  
**Minor Patterns:** 1