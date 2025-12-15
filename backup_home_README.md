# backup_home.sh

A simple Linux Bash utility that creates timestamped backups of a user’s home directory.

This project is designed to demonstrate practical shell scripting skills using real-world system tasks such as directory management, archiving, and safe exclusions. It is intentionally minimal, readable, and suitable for beginners while still reflecting professional Bash habits.

## What this script does

The script creates a compressed archive of the user’s home directory and stores it in a dedicated backups folder inside the home directory. Each backup is uniquely named using the current date and time, preventing overwrites and making it easy to track historical backups.

Common cache and trash directories are excluded to reduce backup size and avoid unnecessary files.

## Why this project exists

This repository is intended for learning and portfolio purposes. It shows:

* Correct Bash variable handling
* Safe directory creation
* Use of timestamps for automation
* Practical use of standard Linux utilities
* A realistic example suitable for GitHub portfolios

## Requirements

* A Linux system
* Bash shell
* Standard GNU utilities available on most distributions

## Usage overview

The script is meant to be run manually or scheduled through system automation tools such as cron. Once executed, it produces a compressed backup file and reports progress through terminal output.

## Customization

Users can easily modify the backup destination, exclusions, or naming format by editing the variables at the top of the script. The structure is intentionally simple to encourage experimentation and learning.

## Safety notes

Running backups consumes disk space. Users should periodically review and remove old backups if storage is limited. The script does not delete any files and does not modify existing data.

## License

This project is released under the MIT License and is free to use, modify, and distribute.

## Author

Created as a Linux Bash scripting example for GitHub portfolios and learning projects.
