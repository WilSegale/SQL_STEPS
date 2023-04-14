@echo off

::tells the user to in put there hostname like (localhost) etc
set /p host="Enter MySQL host: "

::tells the user to input there username
set /p user="Enter MySQL user: "

:: hides the users input for the password for MySQL
set "psCommand=powershell -Command "$pword = read-host 'Enter password' -AsSecureString ; ^
    [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword))""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set "password=%%p"

::connects to MySQL server with the users "hostname","username" and "password"
mysql.exe -h %host% -u %user% -p%password%

::clears the terminal
cls 