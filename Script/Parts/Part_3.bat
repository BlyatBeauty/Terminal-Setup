@echo off

REM Misha's PowerShell Setup Script

REM Introductions
echo Part 3 will install your selected programs via Chocolatey.
echo Ensure you selected your desired programs before running this script.
echo If you are unsure of which programs you picked, press Control-C and open this file in Notepad to confirm.
echo Press any key to begin running Part 3  . . . 
pause > nul

REM -	Part_3: Install Chocolatey GUI and apps
REM 			These packages can be modified based on what your specific install requires.
REM 			Consult the Package Selection shortcut for an interactive checklist of the most common packages a fresh install would need.
echo Now installing your selected software  . . .
choco install chocolateygui imageglass sudo 7zip vcredist140 firefox vlc sumatrapdf dropbox keepassxc notepadplusplus eartrumpet qbittorrent zoom rainmeter steam-client discord epicgameslauncher itunes anki audacity -y
color 2F
echo Chocolatey Packages have been installed
echo Press any key to continue  . . . 
Pause > nul
color 0F
echo Part 3 has been completed.
echo In the 'Tools' folder is a file called 'chocoupdate.bat'
echo Run this file daily to keep Chocolatey packages up to date!
echo If you wish to install Windows Subsystem for Linux, please run Part 4 next.
echo Press any key to continue  . . . 
Pause > nul
Exit
