# Linux Development and Scripting Practice

This repository serves as a conceptual portfolio demonstrating proficiency in core Linux terminal commands and the foundational principles of Bash Shell Scripting. All development and testing were performed within a dedicated Virtual Machine (VM) server environment, mimicking real-world development and deployment conditions.

🧠 Core Competencies Demonstrated
This project showcases a fundamental understanding of how to manage and structure code projects in a secure Linux operating system.

1. Structured Project Setup
The project adheres to professional standards for environment setup:

Dedicated Directory: Creation of a project folder (my-new-app) using the mkdir and cd commands ensures a clean, isolated workspace.

Essential Files: Initialization of a primary execution script (start.sh) and documentation file (README.md) using the touch command.

2. File Security and Permissions
A critical component of this setup is the correct management of file access, which is essential for server security:

Execute Permission: The primary script (start.sh) was explicitly granted execute permissions using the chmod +x command. This ensures the operating system recognizes the file as a runnable program, a crucial step confirmed by inspecting the file details using the ls -l command.

Ownership Management: Commands like chown were practiced to control the owner and group associated with files, demonstrating mastery over file access control.

3. System and User Context
The project involved using commands to understand the running environment:

Identity Check: Commands like whoami and groups were used to confirm user and group affiliations, providing necessary information for permissions management.

Environment Inspection: Commands like pwd (Print Working Directory) were used for precise navigation and location awareness.

⚙️ Feature: Automated Backup Utility
A key component of this project is the conceptual backup.sh utility, which demonstrates basic automation and scripting logic using Bash.

Script Capabilities
The purpose of the utility is to provide a reliable way to duplicate files, which is a fundamental task in system administration and DevOps:

Robustness: The script is designed to handle missing input by including basic argument checking logic.

Error Prevention: It leverages the date command to generate a unique, non-repeating timestamp. This ensures that every time a backup is created, it has a distinct name, preventing accidental overwriting of previous backup versions.

Core Functionality: The script successfully integrates the cp (copy) command to execute the file duplication task.

📚 General Linux Terminal Proficiency
The commands used throughout this project form a foundational toolkit for navigating and managing a Linux environment, including utilities for file creation (touch), deletion (rm), content viewing (cat, less), and system monitoring (df).

This repository serves as evidence of practical skills in setting up, securing, and automating tasks on a Linux platform.
