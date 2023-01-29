@echo off

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
Exit /b

REM Turning PowerShell Scripts off

REM powershell.exe set-executionpolicy undefined