# File Organizer v2.0

Automatically organizes messy folders by file type. Built to clean up Downloads folders and other chaotic directories.

## What It Does

Scans a folder and sorts files into organized categories:
- **pics** - Images (.jpg, .png, .gif, .jpeg, .bmp, .webp)
- **docs** - Documents (.pdf, .docx, .pptx, .xlsx, .doc, .xls)
- **text** - Text files (.txt, .md)
- **data** - Data files (.csv, .json, .xml, .yaml)
- **videos** - Videos (.mp4, .avi, .mkv, .mov, .wmv, .flv)
- **audio** - Audio (.mp3, .wav, .flac, .m4a, .aac, .ogg)
- **code** - Code files (.js, .py, .html, .css, .java, .cs, .cpp, .c, .php, .rb, .go, .rs, .ps1)

**Smart sorting:** Only creates folders for file types it actually finds!

## Usage
```powershell
.\organize.ps1
```

The script will prompt you to enter a folder path, or press Enter to organize the current directory.

## Features

✅ Supports 30+ file types across 7 categories  
✅ Interactive - asks which folder to organize  
✅ Creates detailed log file (organize-log.txt)  
✅ Only creates folders for types present  
✅ Clean, color-coded terminal output  
✅ Safe - won't delete any files  

## Example

**Before:**
```
Downloads/
├── photo.jpg
├── vacation.mp4
├── script.js
├── report.pdf
├── song.mp3
└── notes.txt
```

**After running organize.ps1:**
```
Downloads/
├── pics/
│   └── photo.jpg
├── videos/
│   └── vacation.mp4
├── code/
│   └── script.js
├── docs/
│   └── report.pdf
├── audio/
│   └── song.mp3
└── text/
    └── notes.txt
```

## Log File

Creates `organize-log.txt` with timestamp, folder path, and every action taken.

## Requirements

- Windows PowerShell
- No external dependencies

## Built With

PowerShell scripting using native cmdlets (Get-ChildItem, Move-Item, New-Item)