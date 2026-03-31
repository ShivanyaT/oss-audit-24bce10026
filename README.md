# oss-audit-24bce10026
# Open Source Software Shell Scripting Project

This repository contains five shell scripts developed as part of an Open Source Software course. Each script demonstrates fundamental and intermediate shell scripting concepts while performing practical system administration tasks.

## Student Information

| Field | Details |
|-------|---------|
| **Name** | Shivanya Tomar |
| **Roll Number** | 24BCE10026 |
| **Course** | Open Source Software |
| **Chosen Software** | Git |

## 📜 Script Descriptions

### Script 1 — System Identity Report
A welcome screen script that displays comprehensive system information including:
- Linux distribution name and kernel version
- Current logged-in user and home directory
- System uptime and current date/time
- OS license information (GPL v2)

**Concepts Used:** Variables, command substitution `$()`, basic output formatting, conditional file checking.

---

### Script 2 — FOSS Package Inspector
Checks whether Git (the chosen software) is installed on the system and displays:
- Package installation status
- Package details (name, version, summary, license)
- Philosophical description of the software's purpose

**Concepts Used:** `if-then-else` statements, `case` statements, `rpm -qi` or `dpkg -l`, pipe with `grep`.

---

### Script 3 — Disk and Permission Auditor
Audits important system directories by reporting:
- Disk usage for each directory
- Permissions, owner, and group information
- Git binary location and permissions

**Directories Audited:** `/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`

**Concepts Used:** `for` loops, arrays, `du`, `ls -ld`, `awk`, `cut` for field extraction.

---

### Script 4 — Log File Analyzer
Analyzes log files by:
- Reading files line by line
- Counting occurrences of a specified keyword (default: "error")
- Displaying the last 5 matching lines

**Concepts Used:** `while read` loops, `if-then` conditions, counter variables, command-line arguments (`$1`, `$2`).

---

### Script 5 — Open Source Manifesto Generator
An interactive script that:
- Asks the user three questions about open source
- Generates a personalized manifesto paragraph
- Saves the manifesto to a text file

**Concepts Used:** `read` for user input, string concatenation, file output redirection (`>`), `date` command.

---

## 🚀 Prerequisites and Dependencies

### System Requirements
- Linux operating system (Ubuntu, Fedora, Debian, CentOS, etc.)
- Bash shell (version 4.0 or higher)
- Terminal access

### Required Packages
| Package | Purpose | Installation Command |
|---------|---------|---------------------|
| **Git** | For Script 2 inspection (optional) | Ubuntu: `sudo apt install git`<br>Fedora: `sudo dnf install git` |
| **Log files** | For Script 4 testing | System logs exist by default |

### Distribution-Specific Notes
- **Ubuntu/Debian:** Script 2 uses `rpm` by default; modify to use `dpkg -l`
- **Fedora/RHEL:** Script 2 works as-is with `rpm`
- **Other distributions:** May require minor adjustments to package management commands

---

## 🛠️ Step-by-Step Instructions

1. Clone the repository:
git clone https://github.com/your-username/oss-git-audit.git
cd oss-git-audit

2. Give execution permission:
chmod +x scripts/*.sh

3. Run any script:
	Run Script 1: ```./script1.sh```
	Run Script 2: ```./script1.sh```
	Run Script 3: ```./script3.sh```
	Run Script 4: ```./script4.sh /var/log/syslog```
	Run Script 5: ```./script5.sh```
## Dependencies Required:
	Ubuntu/Linux environment (WSL)
	Bash shell
	Git installed
## Notes
	All scripts are written in Bash.
	Tested on Ubuntu 24.04 (WSL).
	Outputs verified successfully.
