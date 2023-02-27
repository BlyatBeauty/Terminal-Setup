@echo off

REM Misha's PowerShell Setup Script

REM -	Part_4: Install WSL2
echo Installing WSL2
powershell.exe wsl --install
color 2F
echo WSL2 has been installed
echo Press any key to continue  . . . 
Pause > nul
color 0F
echo Restart your system to finish applying changes . . . 
pause > nul 
Exit /b