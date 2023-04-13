@echo off

set /p host="Enter MySQL host: "
set /p user="Enter MySQL user: "
set "psCommand=powershell -Command "$pword = read-host 'Enter password' -AsSecureString ; ^
    [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword))""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set "password=%%p"

mysql.exe -h %host% -u %user% -p%password%