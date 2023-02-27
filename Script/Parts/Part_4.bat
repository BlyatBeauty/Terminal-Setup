@echo off

REM -	Part_4: Scheduling Chocolatey auto-updates

powershell.exe -ExecutionPolicy Bypass -Command "%~dp0Parts\Schedule_Updates.ps1"
echo Chocolatey Automatic Updates have been scheduled
Exit /b
