# System Integrity Checker

## Overview

System Integrity Checker is a Bash-based security script that detects unauthorized or unexpected changes to critical system files. It works by creating a cryptographic baseline of important configuration files and comparing them against future states to identify modifications, deletions, or tampering.

This project demonstrates real-world Linux security concepts used in intrusion detection systems (IDS), compliance auditing, and system hardening.

## What It Does

* Generates SHA-256 hashes of critical system files
* Stores a secure baseline for comparison
* Detects file modifications or deletions
* Logs security alerts with timestamps
* Requires root privileges for protected files

## Files Monitored

* /etc/passwd
* /etc/group
* /etc/shadow
* /etc/sudoers

## How It Works

1. On first run, the script creates a baseline file containing SHA-256 hashes of monitored files.
2. On subsequent runs, it recalculates hashes and compares them to the baseline.
3. If a file is missing or modified, an alert is generated and logged.
4. If no changes are detected, the system is reported as clean.

## Skills Demonstrated

* Bash scripting with strict error handling
* Secure file hashing (SHA-256)
* Baseline creation and verification
* Arrays and loops
* Functions and execution order
* Root privilege enforcement
* Security-first mindset

## Use Cases

* Detecting unauthorized system changes
* Learning Linux security fundamentals
* Demonstrating IDS concepts
* Portfolio project for Linux, sysadmin, or DevOps roles

## Security Notes

* The baseline file is protected with restrictive permissions
* The script must be executed as root to access sensitive files
* Baseline should be recreated intentionally after trusted system updates

## Disclaimer

This tool is intended for educational and monitoring purposes. It is not a replacement for full-featured security or intrusion detection systems.
