Fix Permissions Script
Overview:
fix_permissions.sh is a simple Bash script that automatically corrects ownership and permissions for any directory you choose. It helps ensure consistent access control, especially when dealing with web servers, shared folders, or development environments.

What the Script Does?

Asks you to enter:
The target directory path
The username that should own the directory
The group that should own the directory

Recursively applies ownership using:
chown -R user:group target_directory

Sets secure and standard permissions:
All directories → 755
All files → 644
Confirms when all operations are completed.

Why This Is Useful?
Ensures correct file and folder access for services like NGINX, Apache, Docker volumes, or application environments.
Prevents permission errors after moving, copying, or deploying files.
Provides a consistent baseline for Linux project directories.

Usage

Make the script executable:
chmod +x fix_permissions.sh


Run it:
./fix_permissions.sh

Follow the prompts to enter the directory, username, and group.

Requirements:
Linux environment
Bash shell
Sudo privileges

Notes:
Use this carefully on important directories.
Always double-check the path you provide.
Recommended to test on non-critical folders first.
