# Auto-Commit - Automated Git workflow
# Usage: .\autoc.ps1

Write-Host ""
Write-Host "=== AUTO-COMMIT ===" -ForegroundColor Cyan
Write-Host ""

# Step 1: Check status
Write-Host "Checking repository status..." -ForegroundColor Yellow
Write-Host ""
git status

# Step 2: Confirm user wants to proceed
Write-Host ""
$confirm = Read-Host "Ready to commit these changes? (y/n)"

if ($confirm -ne "y") {
    Write-Host "Aborted." -ForegroundColor Red
    exit
}

# Step 3: Stage everything
Write-Host ""
Write-Host "Staging all changes..." -ForegroundColor Yellow
git add .

# Step 4: Analyze changes to generate message
Write-Host "Analyzing changes..." -ForegroundColor Yellow

$status = git status --short
$diff = git diff --cached --name-only

# Count changes
$modified = ($status | Select-String "^ M").Count
$added = ($status | Select-String "^A ").Count
$deleted = ($status | Select-String "^ D").Count

# Get file types
$files = @()
foreach ($file in $diff) {
    $files += $file
}

# Generate smart message based on changes
$message = ""

# Check for specific patterns
if ($files -match "README") {
    $message = "Updated README documentation"
}
elseif ($files -match "\.ps1$") {
    $message = "Updated PowerShell scripts"
}
elseif ($files -match "\.md$" -and $files.Count -gt 1) {
    $message = "Updated documentation files"
}
elseif ($added -gt 0 -and $modified -eq 0 -and $deleted -eq 0) {
    if ($files.Count -eq 1) {
        $message = "Added $($files[0])"
    } else {
        $message = "Added $($files.Count) new files"
    }
}
elseif ($modified -gt 0 -and $added -eq 0 -and $deleted -eq 0) {
    if ($files.Count -eq 1) {
        $message = "Updated $($files[0])"
    } else {
        $message = "Updated $($files.Count) files"
    }
}
elseif ($deleted -gt 0) {
    $message = "Cleaned up and reorganized files"
}
else {
    # Mixed changes
    $changes = @()
    if ($added -gt 0) { $changes += "$added added" }
    if ($modified -gt 0) { $changes += "$modified modified" }
    if ($deleted -gt 0) { $changes += "$deleted deleted" }
    $message = "Updated project: " + ($changes -join ", ")
}

# Step 5: Show generated message and confirm
Write-Host ""
Write-Host "Generated commit message:" -ForegroundColor Green
Write-Host "  '$message'" -ForegroundColor Cyan
Write-Host ""
$commitConfirm = Read-Host "Commit with this message? (y/n/custom)"

if ($commitConfirm -eq "n") {
    Write-Host "Aborted." -ForegroundColor Red
    exit
}
elseif ($commitConfirm -eq "custom") {
    $message = Read-Host "Enter your commit message"
}

# Step 6: Commit
Write-Host ""
Write-Host "Committing..." -ForegroundColor Yellow
git commit -m $message

# Step 7: Push
Write-Host ""
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
git push

Write-Host ""
Write-Host "[DONE] Changes committed and pushed!" -ForegroundColor Green
Write-Host ""