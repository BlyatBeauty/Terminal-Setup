@echo off

REM Misha's PowerShell Setup Script

REM Introductions
echo These scripts are designed to help speed up Windows and PowerShell setup
echo Each part needs to be run individually to prevent errors
echo Press any key to begin running Part 1  . . . 
pause > nul

REM -	Part_1: Allowing PowerShell Scripts to run.
echo Turning on Remote signed scripts in PowerShell.
powershell.exe set-executionpolicy remotesigned
color 2F
echo You may now run PowerShell scripts
echo Press any key to continue  . . . 
Pause > nul
color 0F
echo Part 1 has been completed. Please run Part 2 next.
echo Press any key to continue  . . . 
Pause > nul
Exit

REM Turning PowerShell Scripts off

REM powershell.exe set-executionpolicy undefined