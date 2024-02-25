import os
import subprocess

# Define color constants
RED = "\033[31m"
GREEN = "\033[32m"
RESET = "\033[0m"

# Check if MySQL is installed on the computer
try:
    # Use subprocess to check the MySQL version
    subprocess.check_output("mysql --version", shell=True)
    print(f"{GREEN}MySQL is installed on this computer.{RESET}")

    # Perform platform-specific actions
    if os.name == "nt":  # Windows
        # Delete shell scripts (*.sh files)
        os.system("del *.sh")
    else:
        # Remove batch files (*.bat files)
        os.system("rm -rf *.bat")
        
except subprocess.CalledProcessError:
    print(f"{RED}MySQL is not installed on this computer.{RESET}")
