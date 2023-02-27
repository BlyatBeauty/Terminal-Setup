@echo off

REM Misha's PowerShell Setup Script

REM - Get permissions
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

:Introductions
REM Introductions
echo These scripts are designed to help speed up Windows and PowerShell setup.
echo Please ensure you have selected your Chocolatey packages before running the script.
goto Prompt

:Prompt
	set pack="n"
	set /p pack=Have you selected which packages you wish to install? (Y or N) 
	if /I "%pack%"=="yes" goto Script
	if /I "%pack%"=="y" goto Script
	if /I "%pack%"=="no" goto NoPackages
	if /I "%pack%"=="n" goto NoPackages

:Script
REM - Allow PowerShell to run scripts
call "%~dp0Parts\Part_1.bat"

REM - Install Chocolatey
start /wait "Install Chocolatey" cmd /c "%~dp0Parts\Part_2.bat"

REM - Install packages via Chocolatey
timeout /t 5
start /wait "Install Packages" cmd /c "%~dp0Parts\Part_3.bat"
color 2F
echo Chocolatey Packages have been installed
color 0F

REM - Install Chocolatey Auto-Update Scheduled Task
call "%~dp0Parts\Part_4.bat"

REM - Install Linux prompt
	set WSL="n"
	set /p WSL=Would you like to install Linux via WSL? (Y or N) 
	if /I "%WSL%"=="yes" goto Part_5
	if /I "%WSL%"=="y" goto Part_5
	if /I "%WSL%"=="no" goto Fin
	if /I "%WSL%"=="n" goto Fin
	
:Part_5
REM - Install Linux via WSL2
call "%~dp0Parts\Part_5.bat"
Goto Fin

:Fin
echo You have reached the end of the script. Please restart your PC if needed, and set up everything else as desired.
echo.
echo Press any key to exit the script . . .  
Pause > nul
exit

REM ==============================================================================================================================
REM 			Conditional endings
REM ==============================================================================================================================


:NoPackages
REM - If the user has not selected packages, tell them to select packages prior to running the script as admin
echo The script has not run.
echo In the 'Tools' folder there is a Package Selection shortcut for an interactive checklist of the most common packages.
echo There is both an online and offline version of this file.
echo Please select your packages there and add them to 'packages.txt' for the script to fetch them.
echo Remember to list all your packages on one line separated by a space.
echo And remember to run this script as administrator!
echo Press any key to exit . . .  
Pause > nul
exit