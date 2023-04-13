from sys import platform
import os


if platform == "win32":
    os.system("del *.sh")