# File Organizer v2.0 - Now with folder selection, more file types, and logging!

Write-Host "=== FILE ORGANIZER v2.0 ===" -ForegroundColor Cyan
Write-Host ""

# Ask which folder to organize
$targetFolder = Read-Host "Enter folder path to organize (or press Enter for current folder)"

# If they just hit Enter, use current folder
if ([string]::IsNullOrWhiteSpace($targetFolder)) {
    $targetFolder = Get-Location
    Write-Host "Using current folder: $targetFolder" -ForegroundColor Yellow
} else {
    # Check if folder exists
    if (-not (Test-Path $targetFolder)) {
        Write-Host "ERROR: Folder not found!" -ForegroundColor Red
        exit
    }
    Set-Location $targetFolder
    Write-Host "Organizing: $targetFolder" -ForegroundColor Yellow
}

Write-Host ""

# Start log file
$logFile = "organize-log.txt"
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
"=== FILE ORGANIZER LOG ===" | Out-File $logFile
"Started: $timestamp" | Out-File $logFile -Append
"Folder: $targetFolder" | Out-File $logFile -Append
"" | Out-File $logFile -Append

# Get all files in target directory
$files = Get-ChildItem -File

# Track what file types we found
$hasImages = $false
$hasDocs = $false
$hasText = $false
$hasData = $false
$hasVideos = $false
$hasAudio = $false
$hasCode = $false

# Scan to see what types exist
foreach ($file in $files) {
    $ext = $file.Extension.ToLower()
    
    # Images
    if ($ext -eq ".jpg" -or $ext -eq ".jpeg" -or $ext -eq ".png" -or $ext -eq ".gif" -or $ext -eq ".bmp" -or $ext -eq ".webp") {
        $hasImages = $true
    }
    # Documents
    elseif ($ext -eq ".pdf" -or $ext -eq ".docx" -or $ext -eq ".pptx" -or $ext -eq ".xlsx" -or $ext -eq ".doc" -or $ext -eq ".xls") {
        $hasDocs = $true
    }
    # Text
    elseif ($ext -eq ".txt" -or $ext -eq ".md") {
        $hasText = $true
    }
    # Data
    elseif ($ext -eq ".csv" -or $ext -eq ".json" -or $ext -eq ".xml" -or $ext -eq ".yaml") {
        $hasData = $true
    }
    # Videos
    elseif ($ext -eq ".mp4" -or $ext -eq ".avi" -or $ext -eq ".mkv" -or $ext -eq ".mov" -or $ext -eq ".wmv" -or $ext -eq ".flv") {
        $hasVideos = $true
    }
    # Audio
    elseif ($ext -eq ".mp3" -or $ext -eq ".wav" -or $ext -eq ".flac" -or $ext -eq ".m4a" -or $ext -eq ".aac" -or $ext -eq ".ogg") {
        $hasAudio = $true
    }
    # Code
    elseif ($ext -eq ".js" -or $ext -eq ".py" -or $ext -eq ".html" -or $ext -eq ".css" -or $ext -eq ".java" -or $ext -eq ".cs" -or $ext -eq ".cpp" -or $ext -eq ".c" -or $ext -eq ".php" -or $ext -eq ".rb" -or $ext -eq ".go" -or $ext -eq ".rs" -or $ext -eq ".ps1") {
        $hasCode = $true
    }
}

# Create folders ONLY for types we found
if ($hasImages) { 
    New-Item -ItemType Directory -Name "pics" -Force | Out-Null
    Write-Host "[+] Created pics folder" -ForegroundColor Green
    "[+] Created pics folder" | Out-File $logFile -Append
}
if ($hasDocs) { 
    New-Item -ItemType Directory -Name "docs" -Force | Out-Null
    Write-Host "[+] Created docs folder" -ForegroundColor Green
    "[+] Created docs folder" | Out-File $logFile -Append
}
if ($hasText) { 
    New-Item -ItemType Directory -Name "text" -Force | Out-Null
    Write-Host "[+] Created text folder" -ForegroundColor Green
    "[+] Created text folder" | Out-File $logFile -Append
}
if ($hasData) { 
    New-Item -ItemType Directory -Name "data" -Force | Out-Null
    Write-Host "[+] Created data folder" -ForegroundColor Green
    "[+] Created data folder" | Out-File $logFile -Append
}
if ($hasVideos) { 
    New-Item -ItemType Directory -Name "videos" -Force | Out-Null
    Write-Host "[+] Created videos folder" -ForegroundColor Green
    "[+] Created videos folder" | Out-File $logFile -Append
}
if ($hasAudio) { 
    New-Item -ItemType Directory -Name "audio" -Force | Out-Null
    Write-Host "[+] Created audio folder" -ForegroundColor Green
    "[+] Created audio folder" | Out-File $logFile -Append
}
if ($hasCode) { 
    New-Item -ItemType Directory -Name "code" -Force | Out-Null
    Write-Host "[+] Created code folder" -ForegroundColor Green
    "[+] Created code folder" | Out-File $logFile -Append
}

Write-Host ""

# Move files into folders
$filesMoved = 0
foreach ($file in $files) {
    $ext = $file.Extension.ToLower()
    
    # Images
    if ($ext -eq ".jpg" -or $ext -eq ".jpeg" -or $ext -eq ".png" -or $ext -eq ".gif" -or $ext -eq ".bmp" -or $ext -eq ".webp") {
        Move-Item $file.Name "pics\" -Force
        Write-Host "→ Moved $($file.Name) to pics" -ForegroundColor Cyan
        "→ Moved $($file.Name) to pics" | Out-File $logFile -Append
        $filesMoved++
    }
    # Documents
    elseif ($ext -eq ".pdf" -or $ext -eq ".docx" -or $ext -eq ".pptx" -or $ext -eq ".xlsx" -or $ext -eq ".doc" -or $ext -eq ".xls") {
        Move-Item $file.Name "docs\" -Force
        Write-Host "→ Moved $($file.Name) to docs" -ForegroundColor Cyan
        "→ Moved $($file.Name) to docs" | Out-File $logFile -Append
        $filesMoved++
    }
    # Text
    elseif ($ext -eq ".txt" -or $ext -eq ".md") {
        Move-Item $file.Name "text\" -Force
        Write-Host "→ Moved $($file.Name) to text" -ForegroundColor Cyan
        "→ Moved $($file.Name) to text" | Out-File $logFile -Append
        $filesMoved++
    }
    # Data
    elseif ($ext -eq ".csv" -or $ext -eq ".json" -or $ext -eq ".xml" -or $ext -eq ".yaml") {
        Move-Item $file.Name "data\" -Force
        Write-Host "→ Moved $($file.Name) to data" -ForegroundColor Cyan
        "→ Moved $($file.Name) to data" | Out-File $logFile -Append
        $filesMoved++
    }
    # Videos
    elseif ($ext -eq ".mp4" -or $ext -eq ".avi" -or $ext -eq ".mkv" -or $ext -eq ".mov" -or $ext -eq ".wmv" -or $ext -eq ".flv") {
        Move-Item $file.Name "videos\" -Force
        Write-Host "→ Moved $($file.Name) to videos" -ForegroundColor Cyan
        "→ Moved $($file.Name) to videos" | Out-File $logFile -Append
        $filesMoved++
    }
    # Audio
    elseif ($ext -eq ".mp3" -or $ext -eq ".wav" -or $ext -eq ".flac" -or $ext -eq ".m4a" -or $ext -eq ".aac" -or $ext -eq ".ogg") {
        Move-Item $file.Name "audio\" -Force
        Write-Host "→ Moved $($file.Name) to audio" -ForegroundColor Cyan
        "→ Moved $($file.Name) to audio" | Out-File $logFile -Append
        $filesMoved++
    }
    # Code
    elseif ($ext -eq ".js" -or $ext -eq ".py" -or $ext -eq ".html" -or $ext -eq ".css" -or $ext -eq ".java" -or $ext -eq ".cs" -or $ext -eq ".cpp" -or $ext -eq ".c" -or $ext -eq ".php" -or $ext -eq ".rb" -or $ext -eq ".go" -or $ext -eq ".rs" -or $ext -eq ".ps1") {
        Move-Item $file.Name "code\" -Force
        Write-Host "→ Moved $($file.Name) to code" -ForegroundColor Cyan
        "→ Moved $($file.Name) to code" | Out-File $logFile -Append
        $filesMoved++
    }
}

# Finish log
$endTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
"" | Out-File $logFile -Append
"Files moved: $filesMoved" | Out-File $logFile -Append
"Completed: $endTime" | Out-File $logFile -Append

Write-Host ""
Write-Host "[DONE] Organized $filesMoved files." -ForegroundColor Green
Write-Host "[LOG] Saved to: organize-log.txt" -ForegroundColor Yellow