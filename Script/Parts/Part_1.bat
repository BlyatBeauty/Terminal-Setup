@echo off

REM -	Part_1: Allowing PowerShell Scripts to run.
echo Turning on Remote signed scripts in PowerShell.
powershell.exe set-executionpolicy remotesigned
echo You may now run PowerShell scripts
Exit /b

REM Turning PowerShell Scripts off

REM powershell.exe set-executionpolicy undefined