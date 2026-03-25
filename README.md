# OSS-AUDIT--Harshvardhan-Borgohain--24BAC10024-
Open Source Audit of Git - analysis of its philosophy, license, Linux footprint, and automation using Bash shell scripts.

# OSS Audit — Git
### Open Source Software Capstone Project | VIT | NGMC Course

---

**Student Name:** Harshvardhan Borgohain  
**Roll Number:** [ 24BAC10024 ]  
**Software Audited:** Git  
**License:** GNU General Public License v2 (GPLv2)  
**Submission Deadline:** 31 March 2026

---

## About This Project

This repository contains the five shell scripts for the **Open Source Audit** capstone project. The project involves a structured audit of **Git** — the world's most widely used distributed version control system, created by Linus Torvalds in 2005.

---

## Repository Structure

```
oss-audit-[24BAC10024]/
│
├── script1_system_identity.sh       # System Identity Report
├── script2_package_inspector.sh     # FOSS Package Inspector
├── script3_disk_auditor.sh          # Disk and Permission Auditor
├── script4_log_analyzer.sh          # Log File Analyzer
├── script5_manifesto_generator.sh   # Open Source Manifesto Generator
│
└── README.md                        # This file
```

---

## Scripts Overview

### Script 1 — System Identity Report
Displays a formatted welcome screen showing the Linux distribution, kernel version, current user, home directory, system uptime, date/time, installed Git version, and the GPLv2 license details.

**Concepts used:** Variables, `echo`, command substitution `$()`, output formatting with string literals.

### Script 2 — FOSS Package Inspector
Checks whether Git is installed, retrieves its version and package metadata using `dpkg`/`rpm`, reads Git global config, and uses a `case` statement to print an open source philosophy note about Git.

**Concepts used:** `if-then-else`, `case` statement, `dpkg -l` / `rpm -qi`, pipes with `grep`, `command -v`.

### Script 3 — Disk and Permission Auditor
Loops through important Linux system directories and audits their permissions, owner, group, and disk usage. Also audits Git-specific paths like `/usr/bin/git`, `/usr/lib/git-core`, and `~/.gitconfig`.

**Concepts used:** `for` loop, arrays, `du`, `ls -ld`, `awk`, `cut`, `-f` and `-d` flags.

### Script 4 — Log File Analyzer
Reads a log file line by line, counts occurrences of a keyword (default: `error`), displays the last 5 matching lines, and also analyzes the Git commit log of any repository found on the system.

**Concepts used:** `while read` loop, `if-then`, counter variables, command-line arguments (`$1`, `$2`), `grep`, `tail`, input redirection.

### Script 5 — Open Source Manifesto Generator
Interactively asks the user three questions about open source philosophy and generates a personalised manifesto, saving it to a `.txt` file named after the current user.

**Concepts used:** `read` for user input, string concatenation (`+=`), `>` and `>>` for file writing, `date` command, function as alias concept.

---

## Prerequisites

- A Linux system (Ubuntu, Debian, Fedora, or any major distro)
- Bash shell version 4.0+ — check with `bash --version`
- Git installed — check with `git --version`
- Standard tools: `uname`, `whoami`, `du`, `ls`, `grep`, `awk`, `cut`
- For Script 2 on Ubuntu/Debian: `dpkg`, `apt-cache`
- For Script 2 on Fedora/RHEL: `rpm`

---

## Setup and Running the Scripts

### Step 1 — Clone the Repository

```bash
git clone https://github.com/HarshvardhanBorgohain/oss-audit-24BAC10024.git
cd oss-audit-24BAC10024
```

### Step 2 — Make Scripts Executable

```bash
chmod +x *.sh
```

### Step 3 — Update Your Name in Each Script

Open each script file and replace:
```bash
STUDENT_NAME="[Harshvardhan Borgohain]"        # → your actual name
ROLL_NUMBER="[24BAC10024]"  # → your actual roll number
```

---

## Running Each Script

### Script 1 — System Identity Report
```bash
./script1_system_identity.sh
```
No arguments needed. Displays system info and Git license details.

---

### Script 2 — FOSS Package Inspector
```bash
./script2_package_inspector.sh
```
No arguments needed. Automatically detects package manager and checks Git installation.

---

### Script 3 — Disk and Permission Auditor
```bash
./script3_disk_auditor.sh
```
No arguments needed. Audits system directories and Git-specific paths.

> Some directories may show permission errors for size — this is expected and handled gracefully.

---

### Script 4 — Log File Analyzer
```bash
# With a specific log file and keyword:
./script4_log_analyzer.sh /var/log/syslog error

# With just a log file (keyword defaults to 'error'):
./script4_log_analyzer.sh /var/log/syslog

# Without arguments (auto-detects a log file):
./script4_log_analyzer.sh
```

> On some systems, log files require root access:
> ```bash
> sudo ./script4_log_analyzer.sh /var/log/messages error
> ```

---

### Script 5 — Open Source Manifesto Generator
```bash
./script5_manifesto_generator.sh
```
Interactive — answers three questions and saves your manifesto to `manifesto_[username].txt`.

---

## Common Issues and Fixes

| Issue | Fix |
|---|---|
| `Permission denied` when running | Run `chmod +x *.sh` first |
| `bad interpreter` or `^M` errors | Fix Windows line endings: `sed -i 's/\r//' *.sh` |
| Log file not found (Script 4) | Try `/var/log/kern.log` or `/var/log/auth.log` |
| `dpkg: command not found` | You're on an RPM system — script auto-switches |
| Git not installed | `sudo apt install git` or `sudo dnf install git` |

---

## License

Submitted as academic coursework for the Open Source Software (NGMC) course.  
Git itself is licensed under the **GNU General Public License v2 (GPLv2)**.

---

*VIT | Open Source Software Course | Capstone Project 2026*
