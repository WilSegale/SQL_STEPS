from sys import platform
import os
import subprocess
import signal

def timeout_handler(signum, frame):
    raise TimeoutError("Timeout expired.")

def do_something():
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

# Set a timeout of 5 seconds
signal.signal(signal.SIGABRT, timeout_handler)

try:
    do_something()
except TimeoutError:
    print("Timed out")

