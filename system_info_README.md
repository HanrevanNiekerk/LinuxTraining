System Information Tool (Linux + Python Integration)

This project demonstrates how Linux Bash scripting can work together with Python to collect detailed system information. The tool is designed for beginners who want to understand automation, system monitoring, and DevOps fundamentals.

Overview

The project contains two files:

A Bash script that serves as the main entry point.
When executed, it triggers the Python script.

A Python script that gathers information about the system’s CPU, memory, disk usage, and operating system details.

Running the Bash script automatically collects and displays all system information in a clean, readable format.

What This Project Does

Identifies the operating system and version

Reads the number of CPU cores and the current CPU usage

Shows total and available memory

Displays how much disk space is used and free

Combines Linux automation with Python’s system-monitoring abilities

How It Works

You run the Bash script from your terminal.

The Bash script hands control to the Python script.

The Python script uses a system-monitoring library to gather hardware and performance details.

The information is printed back to the terminal in a human-friendly format.

Requirements

A Linux system

Python 3 installed

The psutil Python package for system statistics
