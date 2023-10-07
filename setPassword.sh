#!/bin/bash

# MySQL credentials and new password
read -p "Input your MySQL username: " MYSQL_USER
read -p "Input your current password: " OLD_PASSWORD
read -p "Enter your new password: " NEW_PASSWORD

# MySQL command to change the password
mysql -u"${MYSQL_USER}" -p"${OLD_PASSWORD}" <<EOF
  SET PASSWORD FOR '${MYSQL_USER}'@'localhost' = PASSWORD('${NEW_PASSWORD}');
  FLUSH PRIVILEGES;
EOF

# Check the exit status to see if the password change was successful
if [ $? -eq 0 ]; then
  echo "Password changed successfully."
else
  echo "Password change failed."
fi

