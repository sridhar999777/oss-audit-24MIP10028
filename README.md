# oss-audit-24MIP10028

**Student Name:** Sridhar Krishnan 
**Registration Number:** 24MIP10028  
**Target Open-Source Software:** VLC Media Player

---

## 📖 Project Overview
This repository contains five shell scripts developed as the practical component of the Open Source Audit Capstone project. These scripts demonstrate foundational Linux command-line skills, system administration techniques, and an understanding of the Free and Open Source Software (FOSS) philosophy through automation. 

The scripts were developed and tested on an **Ubuntu Linux environment (via WSL)**.

---

## 🛠️ Scripts Description

### 1. System Identity Report (`1_system_identity.sh`)
This script acts as a welcome screen for the audit. It retrieves and formats essential system information, including the Linux distribution name, kernel version, current logged-in user, home directory path, system uptime, and the current date/time. It concludes by displaying a message regarding the GNU GPLv2 license that governs the Linux kernel.

### 2. FOSS Package Inspector (`2_package_inspector.sh`)
This script verifies whether the target FOSS package is currently installed on the system using the `dpkg` package manager. If found, it extracts and displays the version and package description. Furthermore, it utilizes a `case` statement to print a customized philosophical note about the software's role in the open-source ecosystem based on the package name.

### 3. Disk and Permission Auditor (`3_disk_auditor.sh`)
This script automates a security and storage audit of critical system directories (e.g., `/etc`, `/var/log`, `/usr/bin`) alongside the target software's configuration directory. It uses a `for` loop to iterate through the paths, utilizing `ls`, `awk`, and `du` to extract and print the read/write permissions, directory owner, and total disk space used by each directory.

### 4. Log File Analyzer (`4_log_analyzer.sh`)
This script processes system logs to identify potential issues or activities. It takes two command-line arguments: a log file path and a keyword. It reads the file line-by-line using a `while-read` loop, counts the total occurrences of the keyword (case-insensitive), and utilizes `tail` and `grep` to output the last 5 matching lines for quick debugging. 

### 5. Open Source Manifesto Generator (`5_manifesto_generator.sh`)
This is an interactive script that generates a personalized open-source philosophy statement. It prompts the user with three FOSS-related questions, captures their standard input, dynamically concatenates their answers into a pre-written template, and redirects the output to automatically create and save a new `.txt` file named after the current user.

---

## ⚙️ Prerequisites & Dependencies
To run these scripts successfully, your Linux environment requires the following:
* **Operating System:** A Debian/Ubuntu-based Linux distribution (Native, VM, or WSL).
* **Package Manager:** `dpkg` (Required for Script 2 to query package status).
* **GNU Coreutils:** Standard text and file manipulation tools must be present (`grep`, `awk`, `cut`, `cat`, `du`, `ls`, `tail`).

---

## 🚀 Step-by-Step Execution Instructions

**Step 1: Clone the repository**
Download the scripts to your local Linux machine:

```bash
git clone https://github.com/sridhar999777/oss-audit-24MIP10028.git
cd oss-audit-24MIP10028
```
