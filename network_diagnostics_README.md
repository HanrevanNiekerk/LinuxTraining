# Network Diagnostics Toolkit

## Overview

Network Diagnostics Toolkit is a Bash-based utility designed to quickly diagnose common network issues on Linux systems. It follows a structured troubleshooting approach similar to what DevOps engineers, developers, and network administrators use during real production incidents.

The script gathers critical network information, tests connectivity at multiple layers, and produces both terminal output and persistent logs for later analysis.

## What It Does

* Lists active network interfaces and assigned IP addresses
* Detects the default gateway automatically
* Tests DNS resolution using the system resolver
* Verifies gateway reachability
* Checks external internet connectivity via public IP
* Displays listening ports and associated services
* Outputs the system routing table
* Logs all results with timestamps

## How It Works

The script runs a series of ordered checks to isolate network problems efficiently:

1. Confirms network interfaces are present and active
2. Verifies a default route exists
3. Tests DNS resolution independently from raw connectivity
4. Checks local network reachability via the gateway
5. Confirms outbound internet access
6. Displays listening ports for service and security inspection
7. Captures routing information for deeper analysis

This layered approach helps distinguish between interface, routing, DNS, firewall, or upstream network issues.

## Skills Demonstrated

* Linux networking fundamentals
* Bash scripting with strict error handling
* Dynamic system discovery using core utilities
* Logging and timestamping
* Defensive scripting practices
* Network troubleshooting methodology

## Use Cases

* Diagnosing connectivity issues on servers or VMs
* First-response tool during outages or incidents
* Network validation after system changes
* Learning and demonstrating Linux networking concepts
* Portfolio project for DevOps, system administration, or network roles

## Output

* Human-readable terminal output for immediate feedback
* Persistent log file for auditing and incident reporting

## Requirements

* Linux system with iproute2 utilities
* Bash shell
* Standard networking tools (ip, ping, ss, getent)

## Notes

This script is designed to be safe and read-only. It does not modify system configuration or network settings.

## Disclaimer

This tool is intended for diagnostic and educational purposes. It does not replace enterprise monitoring or network management solutions.
