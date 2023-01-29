REM Misha's PowerShell Setup Script

REM Introductions
echo These scripts are designed to help speed up Windows and PowerShell setup
REM echo Each part needs to be run individually to prevent errors
echo This script needs to be run as an administrator
echo Press any key to begin running the script  . . . 
pause > nul

REM - Allow PowerShell to run scripts
call "%~dp0Parts\Part_1.bat"

REM - Install Chocolatey
call "%~dp0Parts\Part_2.bat"

REM - Install packages via Chocolatey
call "%~dp0Parts\Part_3.bat"
	set WSL="n"
	set /p WSL=Would you like to install Linux via WSL? (Y or N) 
	if /I "%WSL%"=="yes" goto Part_4
	if /I "%WSL%"=="y" goto Part_4
	if /I "%WSL%"=="no" goto Fin
	if /I "%WSL%"=="n" goto Fin
	
:Part_4
REM - Install Linux via WSL2
call "%~dp0Parts\Part_4.bat"
Goto Fin

:Fin
echo You have reached the end of the script. Please restart your PC if needed, and set up everything else as desired.
echo.
echo Press any key to exit the script . . .  
Pause > nul
exit