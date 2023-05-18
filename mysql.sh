#!/bin/bash
if command -v mysql &> /dev/null; then
     echo "MySQL is installed"
     sleep 1
     echo "Connecting to MySQL Database"
     sleep 1
     clear
     echo "Connecting to MySQL Database."
     sleep 1
     clear
     echo "Connecting to MySQL Database.."
     sleep 1
     clear
     echo "Connecting to MySQL Database..."
     sleep 1
     clear
     read -p "Please input your username for MySQL: " username
     echo "Connected to MySQL"
     mysql -u $username -p -A
else
     echo "MySQL is not installed"
fi