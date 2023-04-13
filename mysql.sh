#!/bin/bash
if command -v mysql &> /dev/null; then
     echo "MySQL is installed"
     clear
     echo "Connecting to MySQL Database"
     sleep 1
     clear
     echo "Connecting to MySQL Database."sleep 1
     clear
     echo "Connecting to MySQL Database.."
     sleep 1
     clear
     echo "Connecting to MySQL Database..."
     clear
     echo "Connected to MySQL"
     mysql -u root -p -A
else
     echo "MySQL is not installed"
fi