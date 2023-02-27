@echo off

REM Misha's PowerShell Setup Script

REM Introductions
echo Now installing your selected packages  . . . 

REM -	Part_3: Install Chocolatey apps
REM 			These packages can be modified based on what your specific install requires.
REM 			Consult the Package Selection shortcut for an interactive checklist of the most common packages a fresh install would need.
REM 			This script expects a file called packages.txt to exist one level above it with a string of packages to install.
REM 			The Steam prompt is because checksumming Steam's download is stupid, as the client updates on the daily, but I want everything else to Checksum properly

	set steam="n"
	set /p pack=Have you selected which packages you wish to install? (Y or N) 
	if /I "%steam%"=="yes" goto SteamInstall
	if /I "%steam%"=="y" goto SteamInstall
	if /I "%steam%"=="no" goto Packages
	if /I "%steam%"=="n" goto Packages
	
:SteamInstall
choco install steam-client -y --ignore-checksums
goto Packages

:Packages
for /f "tokens=* delims= " %%i in (%~dp0..\packages.txt) do powershell.exe -Command "choco install %%i -y"
color 2F
echo Chocolatey Packages have been installed
color 0F
Exit