#Create:
touch system-info.sh

#Enter file:
nano ./system-info.sh

#Commands:
#!/bin/bash

echo "Collecting system information..."
python3 system_info.py

#Make it executable:
chmod +x system_info.sh

#Install required Python package
pip install psutil

#Test the script
./system_info.sh

