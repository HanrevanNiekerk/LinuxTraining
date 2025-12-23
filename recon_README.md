Automated Reconnaissance Script (BASH)
Overview
This repository contains a terminal-native Bash script designed for automated network reconnaissance and information gathering. It is built specifically for security professionals and penetration testers working within a Kali Linux environment. The script automates the execution of industry-standard tools, organizes output into a structured directory system, and ensures logs are preserved for post-engagement analysis.

Core Features
Pure Bash implementation with zero external script dependencies.

Automated directory management with unique execution timestamps.

Integrated error handling and tool-check validation.

Sequential execution of Nmap, WhatWeb, theHarvester, and Dnsenum.

Standardized logging for both standard output and error streams.

Directory Structure
Upon execution, the script generates a structured output folder:

auto-recon/ └── output/ └── [target]_[timestamp]/ ├── nmap/ ├── whatweb/ ├── theharvester/ └── dnsenum/

Requirements
The script requires the following tools to be installed and available in the system PATH:

Nmap: Network discovery and security auditing.

WhatWeb: Next-generation web scanner.

theHarvester: OSINT tool for gathering subdomains, emails, and names.

Dnsenum: Tool for enumerating DNS information and discovering non-contiguous blocks.

To install all dependencies on a Debian-based system: sudo apt update && sudo apt install -y nmap whatweb theharvester dnsenum

Installation and Usage
Clone the repository: git clone [repository-url]

Navigate to the directory: cd auto-recon

Grant execution permissions: chmod +x recon.sh

Execute the script against a target: ./recon.sh [domain_or_ip]

Technical Workflow
Input Validation: Verifies that a target argument is provided.

Dependency Check: Iterates through required tools to ensure they are installed before proceeding.

Environment Setup: Creates a timestamped directory structure to prevent data overwrites.

Execution: Runs reconnaissance tools against the target, redirecting all output to the designated sub-folders for clean reporting.

Completion: Provides a summary of the operation status.

Disclaimer
This tool is intended for authorized security testing and educational purposes only. Unauthorized access to computer systems is illegal. The user is responsible for ensuring compliance with local, state, and federal laws.
