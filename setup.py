import os
import subprocess
from colorama import Fore

# Define color constants
GREEN = Fore.GREEN
RED = Fore.RED

# Check if MySQL is installed on the computer
try:
    # Use subprocess to check the MySQL version
    subprocess.check_output("mysql --version", shell=True)
    print(f"{GREEN}MySQL is installed on this computer.")

    # Perform platform-specific actions
    if os.name == "nt":  # Windows
        # Delete shell scripts (*.sh files)
        os.system("del *.sh")
    else:
        # Remove batch files (*.bat files)
        os.system("rm -rf *.bat")
        
except subprocess.CalledProcessError:
    print(f"{RED}MySQL is not installed on this computer.")
