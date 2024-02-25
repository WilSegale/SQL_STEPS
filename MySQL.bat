@echo off

:: Tells the user to in put there hostname like (localhost) etc
set /p host="Enter MySQL hostname example(localhost): "

:: Tells the user to input there username
set /p user="Enter MySQL username example(root): "

:: hides the users input for the password for MySQL
set "psCommand = powershell -Command "$pword = read-host 'Enter password' -AsSecureString ; ^
    [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword))""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set "password=%%p"

:: Clears CMD
cls 
if errorlevel 1 (
    echo Failed to connect to MySQL server. Please check your password.
    exit /b 1
) else (
    echo Connected successfully to MySQL server.

    mysql.exe -h %host% -u %user% -p %password%
)
