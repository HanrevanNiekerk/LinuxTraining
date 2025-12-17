Project: Linux Automated Backup Script
A Bash script designed to automate the compression and archival of project directories in an Ubuntu environment.

The "Struggle" Log (Developer Lessons)
Every developer starts somewhere. This project was a masterclass in Linux troubleshooting. Here are the hurdles I cleared:

1. The "Bracketed Paste" Incident
Problem: Attempting to paste code into a VirtualBox terminal resulted in garbage characters like ^[[200~.

Lesson: Terminal emulators often have "Bracketed Paste Mode" enabled. I learned to use text editors like nano to manually input code or use SSH for a better clipboard experience.

2. The Permission & Path Typo
Problem: I spent an hour debugging a "Permission Denied" error because I typed /home/hanre-an-niekerk instead of /home/hanre-van-niekerk.

Lesson: Linux is literal. A single missing letter makes the path invalid. I switched to using the $HOME environment variable to make my script "typo-proof" and portable.

3. Searching for "Ghost" Folders
Problem: The script kept failing with tar: Projects: Cannot stat: No such file or directory.

Lesson: I learned that Linux is case-sensitive (Projects vs projects). After running ls ~/Documents and find ~ -type d, I realized the folder didn't exist yet! I had to learn to create the structure before I could back it up.

4. The Sudo Confusion
Problem: Running the script with sudo ./backup.sh changed the meaning of $HOME to /root, causing the script to look in the wrong place.

Lesson: You don't always need Root power. Running scripts as a standard user is safer and keeps paths consistent.
