# Tools

A collection of utility scripts and automation tools built to solve real problems. Each tool lives in its own directory with dedicated documentation.

## Philosophy

Build tools that:
- Solve actual problems (not tutorial projects)
- Can be used on real data
- Have clear documentation
- Are organized and maintainable

## Available Tools

### 📁 File-Organizer
**Purpose:** Automatically organize messy folders by file type  
**Use Case:** Clean up Downloads, project folders, or any directory with scattered files  
**Status:** ✅ Complete v2.0  
**Features:**
- Supports 30+ file types across 7 categories
- Interactive folder selection
- Generates activity logs
- Smart folder creation (only creates what's needed)

[View Documentation](./File-Organizer/README.md)

---

## 🚧 Work in Progress

Ideas and tools currently in development:

### Planned Tools
- **Commit Message Generator** - Analyzes git diff and suggests commit messages
- **Duplicate File Finder** - Scans for duplicate files and offers cleanup options
- **Batch Renamer** - Rename multiple files using patterns and templates

### Ideas
- Project scaffolder (generates folder structures for different project types)
- Log analyzer (parses and visualizes log files)
- Environment setup scripts (automate dev environment configuration)

---

## Structure

Each tool follows this structure:
```
tools/
└── Tool-Name/
    ├── README.md       # Documentation
    ├── script.ps1      # Main script
    └── examples/       # Usage examples (optional)
```

## Usage

Navigate to individual tool directories for specific usage instructions. Each tool is standalone and can be run independently.

## Contributing to This Repo

New tools should:
1. Live in their own directory
2. Include a README with purpose, usage, and examples
3. Follow PowerShell best practices
4. Be tested before committing

---

**Built with:** PowerShell  
**Platform:** Windows  
**Last Updated:** 2025-10-29