# Command Journal

Track commands as they're learned through actual use. Only add entries after successful execution.

## Stats
- **Total Commands Learned:** 13
- **Commands Mastered:** 12
- **Last Updated:** 2025-10-29
- **Current Learning Tier:** Survival (COMPLETE ✅)

---

## Git Commands

### Survival Tier (Daily Use) - COMPLETE ✅
*First priority - used 100+ times in typical workflow*

- [x] `git status` - Status: ✅ MASTERED (6 reps) - 2025-10-29
- [x] `git add` - Status: ✅ MASTERED (5 reps) - 2025-10-29
- [x] `git commit` - Status: ✅ MASTERED (5 reps) - 2025-10-29
- [x] `git push` - Status: ✅ MASTERED (6 reps) - 2025-10-29
- [ ] `git clone` - Status: Used once (1 rep) - 2025-10-29
- [ ] `git pull` - Status: Not learned yet

### Commands Learned

**Command:** `git status`
**First Used:** 2025-10-29 (Session 1)
**Situation:** Checking which files were staged/unstaged before commit
**What It Does:** Shows current state of working directory and staging area
**Reps:** 6 ✅ MUSCLE MEMORY
**Pattern:** Run before every add/commit to see what's changed
**Session Mastered:** 1

**Command:** `git add`
**First Used:** 2025-10-29 (Session 1)
**Situation:** Staging new files for commit
**What It Does:** Moves changes to staging area so they can be committed
**Reps:** 5 ✅ MUSCLE MEMORY
**Pattern:** Always run before git commit
**Flags/Options:** 
- `git add filename` - Stage specific file
- `git add .` - Stage all changes
**Session Mastered:** 2

**Command:** `git commit`
**First Used:** 2025-10-29 (Session 1)
**Situation:** Saving snapshot of staged changes
**What It Does:** Creates a commit (snapshot) with a message
**Reps:** 5 ✅ MUSCLE MEMORY
**Pattern:** After staging files, commit with descriptive message
**Flags/Options:**
- `-m "message"` - Include commit message inline
- `--amend` - Modify the last commit
**Session Mastered:** 2

**Command:** `git push`
**First Used:** 2025-10-29 (Session 1)
**Situation:** Uploading local commits to GitHub
**What It Does:** Sends commits from local repo to remote (GitHub)
**Reps:** 6 ✅ MUSCLE MEMORY
**Pattern:** After committing changes, push to backup/share
**Session Mastered:** 1

**Command:** `git clone`
**First Used:** 2025-10-29 (Session 1)
**Situation:** Downloading repo from GitHub to local machine
**What It Does:** Creates local copy of remote repository
**Reps:** 1
**Pattern:** One-time setup for each new repo

**Command:** `git config`
**First Used:** 2025-10-29 (Session 1)
**Situation:** Setting up Git identity and fixing email privacy issue
**What It Does:** Configures Git settings (user name, email, etc.)
**Reps:** 2
**Pattern:** Initial setup and when authentication issues occur
**Flags/Options:**
- `--global user.email "email"` - Set email for all repos
- `--global user.name "name"` - Set name for all repos
- `--global --list` - View all global settings

### Rescue Tier (When Things Break)

*Not started yet*

### Power User Tier (Efficiency)

*Not started yet*

---

## Terminal Commands

### Survival Tier (Navigation & Files) - COMPLETE ✅
*Basic movement and file operations*

- [x] `pwd` - Status: ✅ MASTERED (6+ reps) - 2025-10-29
- [x] `ls` / `dir` - Status: ✅ MASTERED (40+ reps) - 2025-10-29
- [x] `cd` - Status: ✅ MASTERED (15+ reps) - 2025-10-29
- [x] `cat` - Status: ✅ MASTERED (10+ reps) - 2025-10-29
- [x] `echo` - Status: ✅ MASTERED (6+ reps) - 2025-10-29
- [x] `cp` - Status: ✅ MASTERED (6+ reps) - 2025-10-29
- [x] `mv` - Status: ✅ MASTERED (10+ reps) - 2025-10-29
- [x] `rm` - Status: ✅ MASTERED (10+ reps) - 2025-10-29
- [ ] `mkdir` - Status: Learning (2 reps) - 2025-10-29

**Command:** `pwd`
**First Used:** 2025-10-29 (Session 2)
**Situation:** Checking current directory location while exploring nested folders
**What It Does:** Print Working Directory - shows full path of current location
**Reps:** 6+ ✅ MUSCLE MEMORY
**Pattern:** Use when lost in directories or before running destructive commands
**Session Mastered:** 2

**Command:** `ls` / `dir`
**First Used:** 2025-10-29 (Session 1)
**Situation:** Checking files in repository
**What It Does:** Lists files and folders in current directory
**Reps:** 40+ ✅ MUSCLE MEMORY
**Pattern:** Used constantly to verify operations and see directory contents
**Session Mastered:** 2

**Command:** `cd`
**First Used:** 2025-10-29 (Session 1)
**Situation:** Navigating to dev folder and into repository
**What It Does:** Changes current directory
**Reps:** 15+ ✅ MUSCLE MEMORY
**Pattern:** Navigate to project folder, move between directories
**Key Learnings:**
- `cd ..` goes up one directory
- `cd ~` goes to home directory
**Session Mastered:** 2

**Command:** `cat`
**First Used:** 2025-10-29 (Session 2)
**Situation:** Self-taught! Used to read README without opening editor
**What It Does:** Displays file contents in terminal
**Reps:** 10+ ✅ MUSCLE MEMORY
**Pattern:** Quick file checks, verify contents before/after operations
**Notable:** Learned this command through exploration before formal teaching
**Session Mastered:** 2

**Command:** `echo`
**First Used:** 2025-10-29 (Session 2)
**Situation:** Creating test files during exploration
**What It Does:** Outputs text, can redirect to files
**Reps:** 6+ ✅ MUSCLE MEMORY
**Pattern:** Create files with content, append to files
**Key Learnings:**
- `>` creates/overwrites file
- `>>` appends to file
**Session Mastered:** 2

**Command:** `cp`
**First Used:** 2025-10-29 (Session 2)
**Situation:** Copying files between directories during practice
**What It Does:** Copy files or directories
**Reps:** 6+ ✅ MUSCLE MEMORY
**Pattern:** Make backups, duplicate files to different locations
**Session Mastered:** 2

**Command:** `mv`
**First Used:** 2025-10-29 (Session 2)
**Situation:** Self-taught! Explored renaming and moving files
**What It Does:** Move files OR rename (same command!)
**Reps:** 10+ ✅ MUSCLE MEMORY
**Pattern:** Reorganize files, fix naming mistakes
**Key Learnings:**
- Moving = renaming the path
- Can move and rename in one command
- Destination must be valid or command fails
**Notable:** Extensive self-directed exploration with this command
**Session Mastered:** 2

**Command:** `rm`
**First Used:** 2025-10-29 (Session 2)
**Situation:** Self-taught! Used to clean up test files
**What It Does:** Remove/delete files and directories
**Reps:** 10+ ✅ MUSCLE MEMORY
**Pattern:** Delete files, clean up workspace
**Key Learnings:**
- Can't delete folder from inside it (must cd .. first)
- No undo - files are gone
**Notable:** Learned through exploration, demonstrated understanding of limitations
**Session Mastered:** 2

**Command:** `mkdir`
**First Used:** 2025-10-29 (Session 1)
**Situation:** Creating C:\dev folder and practice directories
**What It Does:** Creates a new directory
**Reps:** 2
**Pattern:** Set up project structure, create folders

### Rescue Tier (When Things Break)

*Not started yet*

### Power User Tier (Efficiency)

*Not started yet*

---

## Session Highlights

### Session 1 (2025-10-29)
- Focus: Git workflow fundamentals
- Mastered: git status, git push
- Created repository and made first commits

### Session 2 (2025-10-29)
- Focus: Terminal survival tier + Git workflow completion
- Mastered: 8 NEW commands (pwd, ls, cd, cat, echo, cp, mv, rm)
- Completed Git workflow (git add, git commit to mastery)
- **30+ minutes of self-directed exploration**
- Self-taught 3 commands before formal instruction (cat, mv, rm)
- Demonstrated advanced debugging and error correction

---

## Learning Patterns Observed

### Self-Directed Learning
- Uses commands before being taught (cat, mv, rm)
- Explores without asking for permission
- Creates sandbox environments to test safely

### Error Handling
- Self-corrects mistakes by verifying with ls/cat/pwd
- Learns from failures (PowerShell syntax, spaces in names)
- Cleans up after experiments

### Verification Habits
- Constantly uses ls to verify operations
- Uses cat to check file contents
- Uses pwd to track location

### Pattern Recognition
- Discovered file overwriting behavior with `>` vs `>>`
- Learned relative paths (..) through exploration
- Recognized PowerShell syntax differences (spaces in filenames)

---

## Notes

- Session 2 massive progress: 8 new commands mastered in single session
- Complete survival tier achieved (Git + Terminal)
- Demonstrated professional developer habits (sandbox testing, cleanup)
- Ready for rescue tier (handling errors, fixing mistakes)