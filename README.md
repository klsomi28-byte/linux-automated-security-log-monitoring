# Automated Security Log Monitoring Project

## Description
A Linux-based project that automatically monitors security log files to detect suspicious activities.

## Features
- Monitors security logs
- Detects failed login attempts
- Alerts for suspicious entries
- Generates log reports

## Project Structure
```text
automated-security-log-monitoring/
├── logs/
│   └── analysis.log
├── scripts/
│   └── security_log_monitor.sh
├── config/
│   └── monitor.conf
├── README.md
Log Files
/var/log/auth.log

/var/log/syslog

##How to Run
chmod +x scripts/security_log_monitor.sh
./scripts/security_log_monitor.sh

##Requirements
Linux OS
Bash shell
Read permission for log files

##Use Case
Useful for basic security monitoring and intrusion detection.

##Author
Sanjana
