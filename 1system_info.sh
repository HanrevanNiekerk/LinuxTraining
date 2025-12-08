touch system_info.sh
nano./system_info.sh

#Commands:
#!/bin/bash

echo "System Information Report"
echo "-------------------------"

echo "Hostname: $(hostname)"
echo "Uptime:"
uptime

echo ""
echo "CPU Information:"
lscpu | grep "Model name"

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Active Services:"
systemctl list-units --type=service --state=running | head -20
-------------------------------------------------------------------
chmod +x system_info.sh

./system_info.sh
