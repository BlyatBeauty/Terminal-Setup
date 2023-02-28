@echo off

REM -	Part_4: Scheduling Chocolatey auto-updates
REM -	Find out if user wishes to install spotify
REM -	If yes, install task that does not update spotify (prevents Chocolatey from freezing during updating spotify)
REM -	If no, install regular update task


findstr /m "spotify" packages.txt >Nul
if %errorlevel%==0 (
powershell.exe -ExecutionPolicy Bypass -Command "%~dp0Parts\Modified_Schedule.ps1"
)

if %errorlevel%==1 (
powershell.exe -ExecutionPolicy Bypass -Command "%~dp0Parts\Schedule_Updates.ps1"
)

echo Chocolatey Automatic Updates have been scheduled
Exit /b