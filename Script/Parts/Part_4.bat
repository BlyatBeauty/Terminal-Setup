@echo off

REM Misha's PowerShell Setup Script

REM Introductions
echo Part 4 will install Windows Subsystem for Linux.
echo This is not a requirement for most Windows Installs
echo If you do not need a Linux terminal on your PC, press Control-C to exit this script.
echo Press any key to begin running Part 4  . . . 
pause > nul

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
Exit