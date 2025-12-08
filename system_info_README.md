This BASH script generates a basic system information report by executing several standard system commands and displaying their output in a structured format.

The script starts with a clear title and separator.

It then sequentially retrieves and reports the following data points:

Hostname: Uses the hostname command to show the machine's network name.

Uptime: Uses the uptime command to show the current time, how long the system has been running, the number of currently logged-in users, and the system load averages.

CPU Information: Uses lscpu and filters the output with grep to show only the Model name of the processor.

Memory Usage: Uses the free -h command to display total, used, and free system memory in a human-readable format (e.g., Gigabytes or Megabytes).

Disk Usage: Uses the df -h command to show the amount of used and available disk space for all mounted filesystems, also in a human-readable format.

Active Services: Uses the systemctl list-units command to list units of type service that are in the running state, and uses head -20 to limit the output to the first twenty running services for brevity.
