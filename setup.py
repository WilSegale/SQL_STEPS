from sys import platform
import os
import subprocess

if platform == "win32":
    os.system("del *.sh")
else:
    os.system("rm -rf *.bat")