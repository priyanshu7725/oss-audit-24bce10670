# OSS-Audit-24BCE10670
Capstone Project for OSS NGMC Course on VLC Media Player

**Name:** Priyanshu Kumar <br>
**Reg. no:** 24BCE10670 <br>
**Course:** Open Source Software

---

## Chosen Software
VLC Media Player - an open-source media player developed by VideoLAN that supports streaming, multimedia playing and has a versatile format support.

---

## Scripts Description

### Script 1 - System Identity Report
This script displays basic information like distribution, kernel version, current user, home directory, system uptime and current data and time. 

### Script 2 - FOSS Package Inspector
This script checks whether VLC is installed or not by using the dpkg command. If it exists, it displays information like status, version and homepage.

### Script 3 - Disk and Permission Auditor 
This script analyses important directories of the system like /etc, /var/log, /home, /usr/bin, /tmp and reports their size, permissions, owner and group.

### Script 4 - Log File Analyzer  
This script reads through a log file and counts the number of times a particular keyword is found in the log file.

### Script 5 - The Open Source Manifesto Generator
This script takes user input and generates an open-source manifesto based on the user's inputs. It also saves the manifesto in a file for the specific user.

---

## How to Run

```bash
bash script1.sh
bash script2.sh
bash script3.sh
bash script4.sh test.log error
bash script5.sh
```

## Dependencies
- Linux
- Bash shell
- VLC Media Player
