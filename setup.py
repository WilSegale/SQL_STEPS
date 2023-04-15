from sys import platform
import os
import subprocess

# do something that may take a long time
try:
    subprocess.check_output("mysql --version", shell=True)
    print("MySQL is installed on this computer.")
    if platform == "win32":
        os.system("del *.sh")
    else:
        os.system("rm -rf *.bat")
        
except subprocess.CalledProcessError:
    print("MySQL is not installed on this computer.")
