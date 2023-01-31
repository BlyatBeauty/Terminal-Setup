@echo off

REM Misha's PowerShell Setup Script

REM Introductions
echo Now installing your selected packages  . . . 

REM -	Part_3: Install Chocolatey apps
REM 			These packages can be modified based on what your specific install requires.
REM 			Consult the Package Selection shortcut for an interactive checklist of the most common packages a fresh install would need.
REM 			This script expects a file called packages.txt to exist one level above it with a string of packages to install.

for /f "tokens=* delims= " %%i in (%~dp0..\packages.txt) do powershell.exe -Command "choco install %%i -y"
color 2F
echo Chocolatey Packages have been installed
color 0F
Exit