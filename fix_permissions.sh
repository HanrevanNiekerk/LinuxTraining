touch fix-permissions.sh

nano ./fix_permissions.sh
-------
#!/bin/bash

# Fixes ownership and permissions for a target directory

read -p "Enter the directory you want to fix (full path): " TARGET_DIR
read -p "Enter the user who should own the directory: " USERNAME
read -p "Enter the group that should own the directory: " GROUPNAME

echo "Applying ownership..."
sudo chown -R $USERNAME:$GROUPNAME "$TARGET_DIR"

echo "Setting directory permissions to 755..."
find "$TARGET_DIR" -type d -exec chmod 755 {} \;

echo "Setting file permissions to 644..."
find "$TARGET_DIR" -type f -exec chmod 644 {} \;

echo "Permissions and ownership have been fixed."
---------
chmod +x fix_permissions.sh


./fix_permissions.sh
