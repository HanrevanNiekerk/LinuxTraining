Create:
touch nginx-install.sh

Enter nginx-install.sh
nano ./nginx-install.sh

Commands:
#!/bin/bash

echo "Installing NGINX..."
sudo apt update
sudo apt install nginx -y

echo "Enabling and starting service..."
sudo systemctl enable nginx
sudo systemctl start nginx

echo "NGINX installed and running."

Run:
./nginx-install

#if you don't have permission, do the following

1. Add Execute Permission
Use the +x option with chmod to grant execute permission to the owner of the file (which is you, in this case):

chmod u+x ./backup.sh

2. Run the Script
After changing the permissions, you can run the script again:

./nginx-install
