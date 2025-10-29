# Auto-Commit

One-command Git workflow automation. Stage, commit with smart messages, and push - all in a single command.

## What It Does

Automates your entire Git workflow:
1. Shows current changes (`git status`)
2. Confirms you want to proceed
3. Stages all changes (`git add .`)
4. Analyzes changes and generates intelligent commit message
5. Lets you approve, reject, or customize the message
6. Commits and pushes to GitHub

## Usage
```powershell
.\autoc.ps1
```

Or create an alias for instant access:
```powershell
function autoc { & "C:\dev\dev-fundamentals\tools\Auto-Commit\autoc.ps1" }
```

Then just:
```powershell
autoc
```

## Smart Message Generation

Auto-Commit analyzes your changes and generates context-aware messages:

- **README updates** → "Updated README documentation"
- **Script changes** → "Updated PowerShell scripts"  
- **New files** → "Added [filename]" or "Added X new files"
- **File modifications** → "Updated [filename]" or "Updated X files"
- **Mixed changes** → "Updated project: X added, Y modified, Z deleted"

## Options

When prompted "Commit with this message? (y/n/custom)":
- **y** - Use the generated message
- **n** - Abort the commit
- **custom** - Write your own message

## Use Cases

Perfect for:
- Quick commits during active development
- Consistent commit message formatting
- Saving time on repetitive Git commands
- Maintaining commit discipline

## Example
```
$ autoc

=== AUTO-COMMIT ===

Checking repository status...
[shows git status]

Ready to commit these changes? (y/n): y

Staging all changes...
Analyzing changes...

Generated commit message:
  'Updated PowerShell scripts'

Commit with this message? (y/n/custom): y

Committing...
Pushing to GitHub...

[DONE] Changes committed and pushed!
```

## Requirements

- Git configured with remote repository
- PowerShell
- Active Git repository

## Built With

PowerShell scripting using Git CLI commands