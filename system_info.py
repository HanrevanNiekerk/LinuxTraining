#Code it after this: Make it executable: chmod +x system_info.sh

import psutil
import platform
import shutil

def cpu_info():
    print("=== CPU INFORMATION ===")
    print("CPU Cores:", psutil.cpu_count(logical=True))
    print("CPU Physical Cores:", psutil.cpu_count(logical=False))
    print("CPU Usage:", psutil.cpu_percent(interval=1), "%")
    print()

def memory_info():
    print("=== MEMORY INFORMATION ===")
    mem = psutil.virtual_memory()
    print("Total Memory:", mem.total // (1024**2), "MB")
    print("Available Memory:", mem.available // (1024**2), "MB")
    print("Memory Usage:", mem.percent, "%")
    print()

def disk_info():
    print("=== DISK INFORMATION ===")
    disk = shutil.disk_usage("/")
    print("Total Disk:", disk.total // (1024**3), "GB")
    print("Used Disk:", disk.used // (1024**3), "GB")
    print("Free Disk:", disk.free // (1024**3), "GB")
    print()

if __name__ == "__main__":
    print("System:", platform.system(), platform.release())
    print()
    cpu_info()
    memory_info()
    disk_info()
