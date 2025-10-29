# Error Pattern Library

Tracks every error encountered and the pattern to recognize it.

## Stats
- **Total Errors Encountered:** 3
- **Patterns Learned:** 3
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
Git was configured with real email, but GitHub has privacy protection enabled to prevent exposing personal email in commit history

**Fix Command:**
```bash
git config --global user.email "GmanF10@users.noreply.github.com"
git commit --amend --reset-author --no-edit
git push
```

**Prevention:** Always use GitHub's noreply email format (username@users.noreply.github.com) when configuring Git for public repositories

**First Encountered:** 2025-10-29 (Session 1)
**Times Hit:** 1
**Resolution:** ✅ Fixed independently by updating email config and amending commit

---

## PowerShell Syntax Errors

**Error:** `The token '&&' is not a valid statement separator in this version`

**Command That Caused It:** `echo "text" > file.md && mv file.md newname.md`

**Pattern Recognition:**
- Error mentions "not a valid statement separator"
- Trying to use `&&` to chain commands
- This is bash syntax, not PowerShell

**Root Cause:**
PowerShell uses different syntax for command chaining than bash/Linux terminals

**Fix:**
Use `;` (semicolon) instead of `&&` in PowerShell:
```powershell
echo "text" > file.md; mv file.md newname.md
```

Or just run commands separately on different lines

**Prevention:** Remember PowerShell syntax differences from bash

**First Encountered:** 2025-10-29 (Session 2)
**Times Hit:** 1
**Resolution:** ✅ Self-corrected by running commands separately

---

**Error:** `A positional parameter cannot be found that accepts argument 'Files'`

**Command That Caused It:** `mv practice Tracking Files` or `mkdir Tracking Files`

**Pattern Recognition:**
- Error about "positional parameter"
- Happens when using spaces in filenames/folder names
- Command interprets space as separator between arguments

**Root Cause:**
Spaces in terminal commands separate different arguments. Without quotes, "Tracking Files" is treated as two separate arguments.

**Fix Options:**
```powershell
# Option 1: Use hyphens or underscores instead
mv practice Tracking-Files

# Option 2: Use quotes
mv practice "Tracking Files"

# Option 3: Use underscores
mv practice Tracking_Files
```

**Prevention:** Avoid spaces in file/folder names, or always use quotes when spaces are necessary

**First Encountered:** 2025-10-29 (Session 2)
**Times Hit:** 1 (hit on both mv and mkdir)
**Resolution:** ✅ Self-corrected immediately by using hyphens

---

## Terminal Errors

### Minor Pattern: Premature Push

**Situation:** Tried `git push` before running `git commit`

**What Happened:** Git said "Everything up-to-date" (no error, just nothing to push)

**Pattern Recognition:** When you add files but forget to commit, push has nothing to upload

**Learning:** The order matters - always add → commit → push

**First Encountered:** 2025-10-29 (Session 1)

---

### Pattern: Wrong Directory Operations

**Situation:** Tried to `rm further` while inside the further directory

**What Happened:** `Cannot find path` error

**Pattern Recognition:** Can't delete a directory from inside itself

**Learning:** Must `cd ..` to parent directory before removing folder

**First Encountered:** 2025-10-29 (Session 2)
**Resolution:** ✅ Self-corrected by using cd .. then rm

---

### Pattern: File Overwriting Discovery

**Situation:** Used `>` to write to file, discovered it overwrote existing content

**What Happened:** File lost previous content when using `echo "text" > file.md`

**Pattern Recognition:** Single `>` replaces entire file, `>>` appends

**Learning:** 
- `>` = create or overwrite
- `>>` = append to end

**First Encountered:** 2025-10-29 (Session 2)
**Resolution:** ✅ Learned through experimentation, verified with cat

---

## Common Error Categories

### Git Errors
- Email privacy (1) ✅

### PowerShell Syntax
- Command chaining (1) ✅
- Spaces in names (1) ✅

### Command Errors
- Wrong directory (1) ✅

### Minor Patterns
- Workflow order (1) ✅
- File operations (1) ✅

---

## Error Stats by Category

**Git Errors:** 1  
**PowerShell Syntax:** 2  
**Command Errors:** 1  
**Minor Patterns:** 2

**Total Unique Patterns:** 6

---

## Self-Correction Rate

**Session 1:** 100% (1/1 error fixed independently)  
**Session 2:** 100% (5/5 patterns resolved independently)

**Overall:** 100% self-correction rate - all errors debugged without assistance